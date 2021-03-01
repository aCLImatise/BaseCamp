version 1.0

task PrepReferencesh {
  input {
    Boolean? force
    Int? verbose
    String cfsan_snp_pipeline
    String index_ref
  }
  command <<<
    prepReference_sh \
      ~{cfsan_snp_pipeline} \
      ~{index_ref} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    cfsan_snp_pipeline: ""
    index_ref: ""
  }
  output {
    File out_stdout = stdout()
  }
}