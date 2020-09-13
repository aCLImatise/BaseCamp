version 1.0

task ClassifyContigNRpy {
  command <<<
    ClassifyContigNR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}