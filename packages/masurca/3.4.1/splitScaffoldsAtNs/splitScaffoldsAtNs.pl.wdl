version 1.0

task SplitScaffoldsAtNspl {
  command <<<
    splitScaffoldsAtNs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}