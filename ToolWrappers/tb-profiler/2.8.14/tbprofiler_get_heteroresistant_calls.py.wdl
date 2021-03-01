version 1.0

task TbprofilerGetHeteroresistantCallspy {
  command <<<
    tbprofiler_get_heteroresistant_calls_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}