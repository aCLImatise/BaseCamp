version 1.0

task SanityCheckGenomepl {
  command <<<
    sanity_check_genome_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}