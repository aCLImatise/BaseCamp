version 1.0

task TbprofilerGetLibraryFreqpy {
  command <<<
    tbprofiler_get_library_freq_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}