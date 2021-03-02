version 1.0

task RunSnpPipelinepy {
  command <<<
    run_snp_pipeline_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}