version 1.0

task SplitScaffoldsToSubcontigspl {
  command <<<
    split_scaffolds_to_subcontigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}