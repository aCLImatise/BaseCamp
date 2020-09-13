version 1.0

task ConvertToEBDpy {
  command <<<
    convertToEBD_py
  >>>
  output {
    File out_stdout = stdout()
  }
}