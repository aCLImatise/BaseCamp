version 1.0

task ChromosomerFragmentmapstat {
  command <<<
    chromosomer fragmentmapstat
  >>>
  output {
    File out_stdout = stdout()
  }
}