version 1.0

task Bamclip {
  command <<<
    bamclip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}