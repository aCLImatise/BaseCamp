version 1.0

task RunRapMapsh {
  command <<<
    RunRapMap_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}