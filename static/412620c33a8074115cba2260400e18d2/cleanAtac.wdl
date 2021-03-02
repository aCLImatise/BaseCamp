version 1.0

task CleanAtac {
  command <<<
    cleanAtac
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}