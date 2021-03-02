version 1.0

task UmisDemultiplexCells {
  input {
    String fast_q
  }
  command <<<
    umis demultiplex_cells \
      ~{fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}