version 1.0

task Bamindex {
  command <<<
    bamindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}