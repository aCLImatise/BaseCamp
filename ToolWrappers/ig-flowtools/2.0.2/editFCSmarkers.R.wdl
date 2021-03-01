version 1.0

task EditFCSmarkersR {
  command <<<
    editFCSmarkers_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}