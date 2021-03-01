version 1.0

task Nucfreqsfasta {
  command <<<
    nucfreqsfasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}