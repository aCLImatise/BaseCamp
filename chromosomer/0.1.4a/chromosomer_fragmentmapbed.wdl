version 1.0

task ChromosomerFragmentmapbed {
  command <<<
    chromosomer fragmentmapbed
  >>>
  output {
    File out_stdout = stdout()
  }
}