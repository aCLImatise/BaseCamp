version 1.0

task UmisDemultiplexCells {
  input {
    Int? out_dir
    String fast_q
  }
  command <<<
    umis demultiplex_cells \
      ~{fast_q} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "--readnumber TEXT\\n--prefix TEXT\\n--cb_histogram TEXT\\n--cb_cutoff INTEGER\\n--help               Show this message and exit.\\n"
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}