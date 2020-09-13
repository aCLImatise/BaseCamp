version 1.0

task Packagestashconflicts {
  command <<<
    package_stash_conflicts
  >>>
  output {
    File out_stdout = stdout()
  }
}