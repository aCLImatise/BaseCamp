version 1.0

task Bamread {
  command <<<
    bamread
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}