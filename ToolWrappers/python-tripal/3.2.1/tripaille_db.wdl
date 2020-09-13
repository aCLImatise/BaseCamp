version 1.0

task TripailleDb {
  command <<<
    tripaille db
  >>>
  output {
    File out_stdout = stdout()
  }
}