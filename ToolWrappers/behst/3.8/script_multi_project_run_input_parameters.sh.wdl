version 1.0

task ScriptMultiProjectRunInputParameterssh {
  command <<<
    script_multi_project_run_input_parameters_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}