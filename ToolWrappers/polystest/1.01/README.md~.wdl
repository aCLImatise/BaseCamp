version 1.0

task READMEmd {
  command <<<
    README_md_
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}