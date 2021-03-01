version 1.0

task Hifive {
  command <<<
    hifive
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}