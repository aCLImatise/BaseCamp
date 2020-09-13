version 1.0

task PrepGenomeLibpl {
  command <<<
    prep_genome_lib_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}