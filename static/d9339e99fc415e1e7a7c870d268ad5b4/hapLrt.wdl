version 1.0

task HapLrt {
  command <<<
    hapLrt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}