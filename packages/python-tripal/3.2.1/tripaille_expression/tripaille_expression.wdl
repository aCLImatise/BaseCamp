version 1.0

task TripailleExpression {
  command <<<
    tripaille expression
  >>>
  output {
    File out_stdout = stdout()
  }
}