version 1.0

task TbprofilerGetHeteroresistantCallspy {
  command <<<
    tbprofiler_get_heteroresistant_calls_py
  >>>
  output {
    File out_stdout = stdout()
  }
}