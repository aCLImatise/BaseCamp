version 1.0

task NfcoreModulesCreatetestyml {
  input {
    String? tool
    Boolean? run_tests
    File? path_output_yaml
    File? force
    String files_dot
    String exists
  }
  command <<<
    nf_core modules create_test_yml \
      ~{files_dot} \
      ~{exists} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if (run_tests) then "--run-tests" else ""} \
      ~{if defined(path_output_yaml) then ("--output " +  '"' + path_output_yaml + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    tool: "or <tool/subtool>"
    run_tests: "Run the test workflows"
    path_output_yaml: "Path for output YAML file"
    force: "Overwrite output YAML file if it already"
    files_dot: "Options:"
    exists: "-p, --no-prompts                Use defaults without prompting"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_yaml = "${in_path_output_yaml}"
    File out_force = "${in_force}"
  }
}