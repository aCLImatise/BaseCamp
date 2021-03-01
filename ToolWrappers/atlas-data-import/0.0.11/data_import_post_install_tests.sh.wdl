version 1.0

task DataImportPostInstallTestssh {
  input {
    String garnett_cli_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    data_import_post_install_tests_sh \
      ~{garnett_cli_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-data-import:0.0.11--0"
  }
  parameter_meta {
    garnett_cli_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}