version 1.0

task RecoverScaffoldspl {
  command <<<
    recover_scaffolds_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}