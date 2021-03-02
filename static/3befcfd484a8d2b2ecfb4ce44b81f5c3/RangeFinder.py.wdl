version 1.0

task RangeFinderpy {
  command <<<
    RangeFinder_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}