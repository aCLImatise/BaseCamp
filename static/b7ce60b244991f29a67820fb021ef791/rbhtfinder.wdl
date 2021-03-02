version 1.0

task Rbhtfinder {
  command <<<
    rbhtfinder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}