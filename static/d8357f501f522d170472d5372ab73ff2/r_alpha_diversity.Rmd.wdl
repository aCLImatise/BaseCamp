version 1.0

task RAlphaDiversityRmd {
  command <<<
    r_alpha_diversity_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}