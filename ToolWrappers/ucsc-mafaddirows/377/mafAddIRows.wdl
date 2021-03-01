version 1.0

task MafAddIRows {
  input {
    String? n_beds
    Boolean? add_n
    Boolean? add_dash
    String maf_in
    String two_bit_file
  }
  command <<<
    mafAddIRows \
      ~{maf_in} \
      ~{two_bit_file} \
      ~{if defined(n_beds) then ("-nBeds " +  '"' + n_beds + '"') else ""} \
      ~{if (add_n) then "-addN" else ""} \
      ~{if (add_dash) then "-addDash" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_beds: "reads in list of bed files, one per species, with N locations"
    add_n: "adds rows of N's into maf blocks (rather than just annotating them)"
    add_dash: "adds rows of -'s into maf blocks (rather than just annotating them)\\n"
    maf_in: ""
    two_bit_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}