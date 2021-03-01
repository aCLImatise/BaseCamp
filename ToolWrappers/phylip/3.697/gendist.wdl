version 1.0

task Gendist {
  command <<<
    gendist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}