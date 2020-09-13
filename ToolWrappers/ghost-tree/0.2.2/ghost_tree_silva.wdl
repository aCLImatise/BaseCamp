version 1.0

task GhosttreeSilva {
  command <<<
    ghost_tree silva
  >>>
  output {
    File out_stdout = stdout()
  }
}