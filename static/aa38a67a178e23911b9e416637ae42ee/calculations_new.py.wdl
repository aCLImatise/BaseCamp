version 1.0

task CalculationsNewpy {
  command <<<
    calculations_new_py
  >>>
  output {
    File out_stdout = stdout()
  }
}