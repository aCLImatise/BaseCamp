version 1.0

task Fastaremove {
  command <<<
    fastaremove
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}