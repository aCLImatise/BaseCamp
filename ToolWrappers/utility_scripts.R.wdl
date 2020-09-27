version 1.0

task UtilityScriptsR {
  command <<<
    utility_scripts_R
  >>>
  output {
    File out_stdout = stdout()
  }
}