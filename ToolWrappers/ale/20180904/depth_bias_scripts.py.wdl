version 1.0

task DepthBiasScriptspy {
  command <<<
    depth_bias_scripts_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}