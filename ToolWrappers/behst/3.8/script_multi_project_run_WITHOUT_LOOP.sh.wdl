version 1.0

task ScriptMultiProjectRunWITHOUTLOOPsh {
  command <<<
    script_multi_project_run_WITHOUT_LOOP_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}