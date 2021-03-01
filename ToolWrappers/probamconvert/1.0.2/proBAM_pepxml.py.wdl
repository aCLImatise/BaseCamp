version 1.0

task ProBAMPepxmlpy {
  command <<<
    proBAM_pepxml_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}