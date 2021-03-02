version 1.0

task Happyclonesspanclumps {
  command <<<
    happy_clones_span_clumps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}