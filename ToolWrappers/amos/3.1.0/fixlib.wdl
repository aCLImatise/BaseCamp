version 1.0

task Fixlib {
  command <<<
    fixlib
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}