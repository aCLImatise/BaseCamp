version 1.0

task InstallpackagesR {
  command <<<
    installpackages_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}