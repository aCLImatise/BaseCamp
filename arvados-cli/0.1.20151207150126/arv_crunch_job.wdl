version 1.0

task Arvcrunchjob {
  command <<<
    arv_crunch_job
  >>>
  output {
    File out_stdout = stdout()
  }
}