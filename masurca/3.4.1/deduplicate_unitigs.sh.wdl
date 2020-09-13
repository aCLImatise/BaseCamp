version 1.0

task DeduplicateUnitigssh {
  command <<<
    deduplicate_unitigs_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}