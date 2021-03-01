version 1.0

task UtilityScriptsR {
  command <<<
    utility_scripts_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}