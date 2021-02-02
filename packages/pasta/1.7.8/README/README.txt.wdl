version 1.0

task READMEtxt {
  command <<<
    README_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}