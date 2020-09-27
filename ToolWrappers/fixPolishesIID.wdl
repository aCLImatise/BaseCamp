version 1.0

task FixPolishesIID {
  command <<<
    fixPolishesIID
  >>>
  output {
    File out_stdout = stdout()
  }
}