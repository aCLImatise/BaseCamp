version 1.0

task HicupModulepm {
  command <<<
    hicup_module_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}