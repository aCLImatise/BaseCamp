version 1.0

task AlignmentBasicspy {
  command <<<
    AlignmentBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}