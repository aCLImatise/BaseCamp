version 1.0

task StartCodonRefinementpl {
  command <<<
    start_codon_refinement_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}