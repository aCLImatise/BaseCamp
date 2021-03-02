version 1.0

task HomePageRmd {
  command <<<
    homePage_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}