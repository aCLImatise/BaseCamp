version 1.0

task TranslateCoding {
  command <<<
    translateCoding
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}