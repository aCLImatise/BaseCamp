version 1.0

task Macse {
  input {
    String? prog
    Int? x_mx_six_zero_zero_m
    Boolean? jar
    String enrich_alignment
    Int report_gaps_aat_wont
    String remove_seq_causing_gap_py_sites
  }
  command <<<
    macse \
      ~{enrich_alignment} \
      ~{report_gaps_aat_wont} \
      ~{remove_seq_causing_gap_py_sites} \
      ~{if defined(prog) then ("-prog " +  '"' + prog + '"') else ""} \
      ~{if defined(x_mx_six_zero_zero_m) then ("-Xmx600m " +  '"' + x_mx_six_zero_zero_m + '"') else ""} \
      ~{if (jar) then "-jar" else ""}
  >>>
  parameter_meta {
    prog: "the program to be used among those proposed by MACSE toolkit"
    x_mx_six_zero_zero_m: ""
    jar: ""
    enrich_alignment: "refineAlignment"
    report_gaps_aat_wont: "splitAlignment"
    remove_seq_causing_gap_py_sites: "trimSequences"
  }
  output {
    File out_stdout = stdout()
  }
}