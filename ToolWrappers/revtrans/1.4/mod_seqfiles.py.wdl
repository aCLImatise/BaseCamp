version 1.0

task ModSeqfilespy {
  command <<<
    mod_seqfiles_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}