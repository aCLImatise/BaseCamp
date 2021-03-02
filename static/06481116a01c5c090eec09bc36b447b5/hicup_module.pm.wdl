version 1.0

task HicupModulepm {
  command <<<
    hicup_module_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}