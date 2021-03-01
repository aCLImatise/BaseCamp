version 1.0

task OasesPipelinepy {
  command <<<
    oases_pipeline_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}