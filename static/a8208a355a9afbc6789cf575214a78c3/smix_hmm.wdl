version 1.0

task SmixHmm {
  command <<<
    smix_hmm
  >>>
  output {
    File out_stdout = stdout()
  }
}