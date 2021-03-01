version 1.0

task Fastool {
  command <<<
    fastool
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}