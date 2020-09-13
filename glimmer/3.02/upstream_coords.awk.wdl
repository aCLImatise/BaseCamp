version 1.0

task Upstreamcoordsawk {
  command <<<
    upstream_coords_awk
  >>>
  output {
    File out_stdout = stdout()
  }
}