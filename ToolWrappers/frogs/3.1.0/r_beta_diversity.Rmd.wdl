version 1.0

task RBetaDiversityRmd {
  command <<<
    r_beta_diversity_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}