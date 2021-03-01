version 1.0

task PoreCAlignmentsCreatetable {
  input {
    File? alignment_haplotypes
    String analysis
    String what_shap
  }
  command <<<
    pore_c alignments create_table \
      ~{analysis} \
      ~{what_shap} \
      ~{if defined(alignment_haplotypes) then ("--alignment-haplotypes " +  '"' + alignment_haplotypes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    alignment_haplotypes: "The alignment to haplotype mapping from"
    analysis: "Options:"
    what_shap: "--help                       Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}