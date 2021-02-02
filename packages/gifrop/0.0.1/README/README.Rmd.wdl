version 1.0

task READMERmd {
  command <<<
    README_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}