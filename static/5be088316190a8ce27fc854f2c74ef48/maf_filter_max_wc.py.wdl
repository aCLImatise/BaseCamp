version 1.0

task MafFilterMaxWcpy {
  command <<<
    maf_filter_max_wc_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}