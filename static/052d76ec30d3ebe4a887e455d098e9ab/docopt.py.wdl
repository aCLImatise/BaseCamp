version 1.0

task Docoptpy {
  command <<<
    docopt_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}