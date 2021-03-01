version 1.0

task Bamreset {
  command <<<
    bamreset
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}