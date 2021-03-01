version 1.0

task Esd2esi {
  command <<<
    esd2esi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}