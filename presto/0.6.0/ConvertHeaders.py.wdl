version 1.0

task ConvertHeaderspy {
  command <<<
    ConvertHeaders_py
  >>>
  output {
    File out_stdout = stdout()
  }
}