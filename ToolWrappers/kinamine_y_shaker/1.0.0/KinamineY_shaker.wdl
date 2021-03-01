version 1.0

task KinamineYshaker {
  input {
    String? jar
    String java
    String protein_pilot_distinct_peptide_summary
    String fast_a
    String output_dir
    String fdr
  }
  command <<<
    KinamineY_shaker \
      ~{java} \
      ~{protein_pilot_distinct_peptide_summary} \
      ~{fast_a} \
      ~{output_dir} \
      ~{fdr} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    java: ""
    protein_pilot_distinct_peptide_summary: ""
    fast_a: ""
    output_dir: ""
    fdr: ""
  }
  output {
    File out_stdout = stdout()
  }
}