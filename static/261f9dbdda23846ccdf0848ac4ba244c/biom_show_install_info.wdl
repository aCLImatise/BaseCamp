version 1.0

task BiomShowinstallinfo {
  command <<<
    biom show_install_info
  >>>
  output {
    File out_stdout = stdout()
  }
}