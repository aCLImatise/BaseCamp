version 1.0

task MafFilterpy {
  command <<<
    maf_filter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}