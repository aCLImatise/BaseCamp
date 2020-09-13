version 1.0

task RunSnpPipelinepy {
  command <<<
    run_snp_pipeline_py
  >>>
  output {
    File out_stdout = stdout()
  }
}