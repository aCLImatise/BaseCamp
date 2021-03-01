version 1.0

task Pandaxs {
  command <<<
    pandaxs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}