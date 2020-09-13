version 1.0

task UmisDemultiplexCells {
  input {
    String? out_dir
    String? read_number
    String? prefix
    String? cb_histogram
    Int? cb_cut_off
    String fast_q
  }
  command <<<
    umis demultiplex_cells \
      ~{fast_q} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(read_number) then ("--readnumber " +  '"' + read_number + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(cb_histogram) then ("--cb_histogram " +  '"' + cb_histogram + '"') else ""} \
      ~{if defined(cb_cut_off) then ("--cb_cutoff " +  '"' + cb_cut_off + '"') else ""}
  >>>
  parameter_meta {
    out_dir: ""
    read_number: ""
    prefix: ""
    cb_histogram: ""
    cb_cut_off: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}