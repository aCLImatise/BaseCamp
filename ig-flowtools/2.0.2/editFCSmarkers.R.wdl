version 1.0

task EditFCSmarkersR {
  command <<<
    editFCSmarkers_R
  >>>
  output {
    File out_stdout = stdout()
  }
}