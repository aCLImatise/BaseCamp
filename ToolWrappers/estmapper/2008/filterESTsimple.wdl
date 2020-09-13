version 1.0

task FilterESTsimple {
  command <<<
    filterESTsimple
  >>>
  output {
    File out_stdout = stdout()
  }
}