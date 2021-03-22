version 1.0

task ScaffoldLevelDReppy {
  command <<<
    ScaffoldLevel_dRep_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/drep:3.2.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}