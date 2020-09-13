version 1.0

task SamToNavBasicspy {
  command <<<
    SamToNavBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}