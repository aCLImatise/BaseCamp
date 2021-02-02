version 1.0

task WgfastPrep {
  input {
    File? snp_matrix
    String? model
    Int? processors
  }
  command <<<
    wgfast_prep \
      ~{if defined(snp_matrix) then ("--snp_matrix " +  '"' + snp_matrix + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""}
  >>>
  parameter_meta {
    snp_matrix: "path to NASP snp_matrix [REQUIRED]"
    model: "model for RAxML, defaults to ASC_GTRGAMMA, can also be\\nGTRGAMMA"
    processors: "number of processors to use with GTRGAMMA, defaults to\\n4\\n"
  }
  output {
    File out_stdout = stdout()
  }
}