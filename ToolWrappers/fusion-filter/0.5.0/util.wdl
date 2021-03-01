version 1.0

task Util {
  command <<<
    util
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}