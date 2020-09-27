version 1.0

task ConvertTDFtoMzMLpy {
  command <<<
    convertTDFtoMzML_py
  >>>
  output {
    File out_stdout = stdout()
  }
}