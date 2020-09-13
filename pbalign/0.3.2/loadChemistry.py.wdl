version 1.0

task LoadChemistrypy {
  command <<<
    loadChemistry_py
  >>>
  output {
    File out_stdout = stdout()
  }
}