version 1.0

task PretextGraph {
  command <<<
    PretextGraph
  >>>
  output {
    File out_stdout = stdout()
  }
}