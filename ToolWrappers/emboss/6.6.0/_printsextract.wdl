version 1.0

task Printsextract {
  command <<<
    _printsextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}