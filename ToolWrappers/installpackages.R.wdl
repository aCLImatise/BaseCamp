version 1.0

task InstallpackagesR {
  command <<<
    installpackages_R
  >>>
  output {
    File out_stdout = stdout()
  }
}