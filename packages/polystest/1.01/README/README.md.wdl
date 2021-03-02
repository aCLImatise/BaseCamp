version 1.0

task READMEmd {
  command <<<
    README_md
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}