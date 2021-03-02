version 1.0

task ConvertMassLynxTomzMLpy {
  command <<<
    convertMassLynxTomzML_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}