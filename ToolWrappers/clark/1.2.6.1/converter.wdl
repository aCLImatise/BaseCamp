version 1.0

task Converter {
  command <<<
    converter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}