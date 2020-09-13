version 1.0

task SeqtkCutN {
  input {
    Int? min_size_n
    Int? penalty_for_a
    Boolean? print_gaps_sequence
    String in_dot_fa
  }
  command <<<
    seqtk cutN \
      ~{in_dot_fa} \
      ~{if defined(min_size_n) then ("-n " +  '"' + min_size_n + '"') else ""} \
      ~{if defined(penalty_for_a) then ("-p " +  '"' + penalty_for_a + '"') else ""} \
      ~{if (print_gaps_sequence) then "-g" else ""}
  >>>
  parameter_meta {
    min_size_n: "min size of N tract [1000]"
    penalty_for_a: "penalty for a non-N [10]"
    print_gaps_sequence: "print gaps only, no sequence"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}