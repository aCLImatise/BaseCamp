version 1.0

task SamToNavBasicspy {
  command <<<
    SamToNavBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}