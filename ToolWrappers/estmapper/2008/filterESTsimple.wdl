version 1.0

task FilterESTsimple {
  command <<<
    filterESTsimple
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}