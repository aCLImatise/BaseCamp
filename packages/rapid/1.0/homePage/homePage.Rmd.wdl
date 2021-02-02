version 1.0

task HomePageRmd {
  command <<<
    homePage_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}