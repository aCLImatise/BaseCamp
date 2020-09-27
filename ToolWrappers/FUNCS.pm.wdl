version 1.0

task FUNCSpm {
  command <<<
    FUNCS_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}