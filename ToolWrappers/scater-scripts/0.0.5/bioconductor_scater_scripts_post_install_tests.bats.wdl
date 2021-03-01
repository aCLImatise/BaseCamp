version 1.0

task Bioconductorscaterscriptspostinstalltestsbats {
  command <<<
    bioconductor_scater_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}