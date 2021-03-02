version 1.0

task Macse {
  input {
    String? prog
    Int? x_mx_six_zero_zero_m
    Boolean? jar
    String align_sequences
    String enrich_alignment
    String export_alignment
    Int report_gaps_aat_wont
    String remove_seq_causing_gap_py_sites
  }
  command <<<
    macse \
      ~{align_sequences} \
      ~{enrich_alignment} \
      ~{export_alignment} \
      ~{report_gaps_aat_wont} \
      ~{remove_seq_causing_gap_py_sites} \
      ~{if defined(prog) then ("-prog " +  '"' + prog + '"') else ""} \
      ~{if defined(x_mx_six_zero_zero_m) then ("-Xmx600m " +  '"' + x_mx_six_zero_zero_m + '"') else ""} \
      ~{if (jar) then "-jar" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prog: "the program to be used among those proposed by MACSE toolkit"
    x_mx_six_zero_zero_m: ""
    jar: ""
    align_sequences: "alignTwoProfiles"
    enrich_alignment: "refineAlignment"
    export_alignment: "translateNT2AA"
    report_gaps_aat_wont: "splitAlignment"
    remove_seq_causing_gap_py_sites: "trimSequences"
  }
  output {
    File out_stdout = stdout()
  }
}