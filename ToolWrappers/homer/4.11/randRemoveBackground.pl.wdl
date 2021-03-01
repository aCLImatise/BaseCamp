version 1.0

task RandRemoveBackgroundpl {
  command <<<
    randRemoveBackground_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}