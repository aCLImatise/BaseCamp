version 1.0

task SettingsNightlyini {
  command <<<
    settings_nightly_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}