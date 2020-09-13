version 1.0

task Bioconductorscaterscriptspostinstalltestsbats {
  command <<<
    bioconductor_scater_scripts_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}