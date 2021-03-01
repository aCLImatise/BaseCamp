version 1.0

task RManovaRmd {
  command <<<
    r_manova_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}