version 1.0

task Squeakr {
  command <<<
    squeakr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}