version 1.0

task GenerateReactivityProfilespy {
  command <<<
    generateReactivityProfiles_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}