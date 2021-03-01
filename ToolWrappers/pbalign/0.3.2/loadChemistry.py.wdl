version 1.0

task LoadChemistrypy {
  command <<<
    loadChemistry_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}