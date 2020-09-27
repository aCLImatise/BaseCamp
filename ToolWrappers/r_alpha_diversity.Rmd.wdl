version 1.0

task RAlphaDiversityRmd {
  command <<<
    r_alpha_diversity_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}