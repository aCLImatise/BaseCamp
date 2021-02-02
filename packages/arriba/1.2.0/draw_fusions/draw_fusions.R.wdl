version 1.0

task DrawFusionsR {
  command <<<
    draw_fusions_R
  >>>
  output {
    File out_stdout = stdout()
  }
}