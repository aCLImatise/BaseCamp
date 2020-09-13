version 1.0

task ProBAMPepxmlpy {
  command <<<
    proBAM_pepxml_py
  >>>
  output {
    File out_stdout = stdout()
  }
}