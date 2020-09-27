version 1.0

task ScriptMultiProjectRunsh {
  command <<<
    script_multi_project_run_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}