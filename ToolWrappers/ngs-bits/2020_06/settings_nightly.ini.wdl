version 1.0

task SettingsNightlyini {
  command <<<
    settings_nightly_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}