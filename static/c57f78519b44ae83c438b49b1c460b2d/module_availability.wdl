version 1.0

task ModuleAvailability {
  command <<<
    module_availability
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}