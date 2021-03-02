version 1.0

task MdoutAnalyzerpy {
  command <<<
    mdout_analyzer_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}