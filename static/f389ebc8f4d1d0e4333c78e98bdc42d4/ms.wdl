version 1.0

task Ms {
  command <<<
    ms
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}