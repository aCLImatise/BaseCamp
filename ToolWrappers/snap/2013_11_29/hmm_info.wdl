version 1.0

task Hmminfo {
  command <<<
    hmm_info
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}