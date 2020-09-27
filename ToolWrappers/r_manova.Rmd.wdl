version 1.0

task RManovaRmd {
  command <<<
    r_manova_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}