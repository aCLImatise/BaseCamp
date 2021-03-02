version 1.0

task Packagestashconflicts {
  command <<<
    package_stash_conflicts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}