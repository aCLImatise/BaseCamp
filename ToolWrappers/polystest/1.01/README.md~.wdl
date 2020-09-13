version 1.0

task READMEmd {
  command <<<
    README_md_
  >>>
  output {
    File out_stdout = stdout()
  }
}