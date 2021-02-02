version 1.0

task ModSeqfilespy {
  command <<<
    mod_seqfiles_py
  >>>
  output {
    File out_stdout = stdout()
  }
}