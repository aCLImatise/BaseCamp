version 1.0

task ModuleAvailability {
  command <<<
    module_availability
  >>>
  output {
    File out_stdout = stdout()
  }
}