version 1.0

task TbprofilerGetLibraryFreqpy {
  command <<<
    tbprofiler_get_library_freq_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}