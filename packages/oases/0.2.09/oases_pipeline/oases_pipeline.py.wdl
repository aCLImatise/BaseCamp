version 1.0

task OasesPipelinepy {
  command <<<
    oases_pipeline_py
  >>>
  output {
    File out_stdout = stdout()
  }
}