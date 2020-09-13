version 1.0

task InitialConditionspy {
  command <<<
    Initial_Conditions_py
  >>>
  output {
    File out_stdout = stdout()
  }
}