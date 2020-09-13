version 1.0

task SanityCheckGenomepl {
  command <<<
    sanity_check_genome_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}