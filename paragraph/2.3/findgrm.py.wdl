version 1.0

task Findgrmpy {
  command <<<
    findgrm_py
  >>>
  output {
    File out_stdout = stdout()
  }
}