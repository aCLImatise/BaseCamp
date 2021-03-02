version 1.0

task Arvcrunchjob {
  command <<<
    arv_crunch_job
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}