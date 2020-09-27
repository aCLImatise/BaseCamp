version 1.0

task DbGraphjl {
  command <<<
    db_graph_jl
  >>>
  output {
    File out_stdout = stdout()
  }
}