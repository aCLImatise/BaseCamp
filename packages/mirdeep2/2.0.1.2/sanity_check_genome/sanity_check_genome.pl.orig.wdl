version 1.0

task SanityCheckGenomeplorig {
  command <<<
    sanity_check_genome_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}