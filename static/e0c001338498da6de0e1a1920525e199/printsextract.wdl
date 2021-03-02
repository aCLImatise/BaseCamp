version 1.0

task Printsextract {
  command <<<
    printsextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}