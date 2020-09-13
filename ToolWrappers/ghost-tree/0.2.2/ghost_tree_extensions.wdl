version 1.0

task GhosttreeExtensions {
  command <<<
    ghost_tree extensions
  >>>
  output {
    File out_stdout = stdout()
  }
}