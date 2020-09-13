version 1.0

task ProBAMProBEDpy {
  command <<<
    proBAM_proBED_py
  >>>
  output {
    File out_stdout = stdout()
  }
}