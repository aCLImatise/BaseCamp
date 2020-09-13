version 1.0

task PullTArchive {
  command <<<
    pullTArchive
  >>>
  output {
    File out_stdout = stdout()
  }
}