version 1.0

task Fastaindex {
  command <<<
    fastaindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}