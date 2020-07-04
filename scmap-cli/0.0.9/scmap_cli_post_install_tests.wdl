version 1.0

task ScmapCliPostInstallTests.sh {
  input {
    String sc_map_scripts_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    scmap-cli-post-install-tests.sh \
      ~{sc_map_scripts_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  parameter_meta {
    sc_map_scripts_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
}