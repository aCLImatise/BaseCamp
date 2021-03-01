version 1.0

task READMERmd {
  command <<<
    README_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}