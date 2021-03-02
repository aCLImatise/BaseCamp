version 1.0

task Settingsiniexample {
  command <<<
    settings_ini_example
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}