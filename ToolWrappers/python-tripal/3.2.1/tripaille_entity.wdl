version 1.0

task TripailleEntity {
  command <<<
    tripaille entity
  >>>
  output {
    File out_stdout = stdout()
  }
}