version 1.0

task Happyclonesspanclumps {
  command <<<
    happy_clones_span_clumps
  >>>
  output {
    File out_stdout = stdout()
  }
}