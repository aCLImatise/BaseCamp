version 1.0

task Fastaclip {
  command <<<
    fastaclip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}