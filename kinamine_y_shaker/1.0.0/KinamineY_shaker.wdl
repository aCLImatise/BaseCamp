version 1.0

task KinamineYShaker {
  input {
    String? jar
    String java
    String protein_pilot_distinct_peptide_summary
    String fast_a
    String output_dir
    String fdr
  }
  command <<<
    KinamineY-shaker \
      ~{java} \
      ~{protein_pilot_distinct_peptide_summary} \
      ~{fast_a} \
      ~{output_dir} \
      ~{fdr} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    protein_pilot_distinct_peptide_summary: ""
    fast_a: ""
    output_dir: ""
    fdr: ""
  }
}