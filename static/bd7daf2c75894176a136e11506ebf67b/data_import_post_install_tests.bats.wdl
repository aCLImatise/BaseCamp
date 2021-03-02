version 1.0

task DataImportPostInstallTestsbats {
  command <<<
    data_import_post_install_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-data-import:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}