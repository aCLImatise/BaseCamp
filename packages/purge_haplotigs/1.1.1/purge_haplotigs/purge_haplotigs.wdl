version 1.0

task PurgeHaplotigs {
  command <<<
    purge_haplotigs
  >>>
  output {
    File out_stdout = stdout()
  }
}