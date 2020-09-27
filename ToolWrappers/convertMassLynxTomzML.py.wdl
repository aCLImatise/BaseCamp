version 1.0

task ConvertMassLynxTomzMLpy {
  command <<<
    convertMassLynxTomzML_py
  >>>
  output {
    File out_stdout = stdout()
  }
}