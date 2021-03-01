version 1.0

task ScaffoldLevelDReppy {
  command <<<
    ScaffoldLevel_dRep_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}