version 1.0

task Formatlist {
  command <<<
    formatlist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}