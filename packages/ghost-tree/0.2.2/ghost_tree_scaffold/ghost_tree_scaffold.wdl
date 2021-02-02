version 1.0

task GhosttreeScaffold {
  command <<<
    ghost_tree scaffold
  >>>
  output {
    File out_stdout = stdout()
  }
}