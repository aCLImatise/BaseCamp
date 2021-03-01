version 1.0

task Dedupe2sh {
  command <<<
    dedupe2_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}