version 1.0

task Catpv {
  command <<<
    catpv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}