version 1.0

task UpgradeTf1py {
  command <<<
    upgrade_tf1_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}