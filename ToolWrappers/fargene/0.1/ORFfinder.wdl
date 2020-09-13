version 1.0

task ORFfinder {
  command <<<
    ORFfinder
  >>>
  output {
    File out_stdout = stdout()
  }
}