version 1.0

task SanityCheckGenomepl {
  command <<<
    sanity_check_genome_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}