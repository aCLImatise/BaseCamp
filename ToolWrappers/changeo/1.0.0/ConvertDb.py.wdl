version 1.0

task ConvertDbpy {
  command <<<
    ConvertDb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}