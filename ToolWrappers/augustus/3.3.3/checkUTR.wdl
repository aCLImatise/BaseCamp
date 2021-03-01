version 1.0

task CheckUTR {
  command <<<
    checkUTR
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}