version 1.0

task ClassifyContigNRpy {
  command <<<
    ClassifyContigNR_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}