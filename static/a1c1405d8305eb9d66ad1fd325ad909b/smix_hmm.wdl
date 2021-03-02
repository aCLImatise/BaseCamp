version 1.0

task SmixHmm {
  command <<<
    smix_hmm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}