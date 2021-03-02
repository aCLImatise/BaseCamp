version 1.0

task NISTParserpy {
  command <<<
    NISTParser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}