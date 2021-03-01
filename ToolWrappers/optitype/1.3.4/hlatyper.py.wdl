version 1.0

task Hlatyperpy {
  command <<<
    hlatyper_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}