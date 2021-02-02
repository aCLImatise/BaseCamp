version 1.0

task CombineSegBoostrapR {
  command <<<
    combineSegBoostrap_R
  >>>
  output {
    File out_stdout = stdout()
  }
}