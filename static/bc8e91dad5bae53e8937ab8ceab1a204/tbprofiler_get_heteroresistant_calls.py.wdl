version 1.0

task TbprofilerGetHeteroresistantCallspy {
  command <<<
    tbprofiler_get_heteroresistant_calls_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}