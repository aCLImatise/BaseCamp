version 1.0

task RBetaDiversityRmd {
  command <<<
    r_beta_diversity_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}