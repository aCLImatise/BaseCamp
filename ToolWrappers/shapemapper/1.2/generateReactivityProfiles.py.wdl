version 1.0

task GenerateReactivityProfilespy {
  command <<<
    generateReactivityProfiles_py
  >>>
  output {
    File out_stdout = stdout()
  }
}