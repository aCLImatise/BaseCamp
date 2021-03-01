version 1.0

task Upstreamcoordsawk {
  command <<<
    upstream_coords_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}