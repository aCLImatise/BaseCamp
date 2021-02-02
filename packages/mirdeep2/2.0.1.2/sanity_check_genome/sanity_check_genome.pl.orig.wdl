version 1.0

task SanityCheckGenomeplorig {
  command <<<
    sanity_check_genome_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}