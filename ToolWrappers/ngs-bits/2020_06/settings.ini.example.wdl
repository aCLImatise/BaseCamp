version 1.0

task Settingsiniexample {
  command <<<
    settings_ini_example
  >>>
  output {
    File out_stdout = stdout()
  }
}