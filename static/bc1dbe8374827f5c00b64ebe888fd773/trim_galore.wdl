version 1.0

task TrimGalore {
  input {
    String? hard_trim_five
    String? hard_trim_three
  }
  command <<<
    trim_galore \
      ~{if defined(hard_trim_five) then ("--hardtrim5 " +  '"' + hard_trim_five + '"') else ""} \
      ~{if defined(hard_trim_three) then ("--hardtrim3 " +  '"' + hard_trim_three + '"') else ""}
  >>>
  parameter_meta {
    hard_trim_five: ": CCTAAGGAAACAAGTACACT"
    hard_trim_three: ":                                                   TTTTTAAGAAAATGGAAAAT"
  }
}