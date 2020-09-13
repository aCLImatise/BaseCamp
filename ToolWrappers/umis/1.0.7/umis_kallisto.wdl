version 1.0

task UmisKallisto {
  input {
    String? out_dir
    String? cb_histogram
    Int? cb_cut_off
    String fast_q
  }
  command <<<
    umis kallisto \
      ~{fast_q} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(cb_histogram) then ("--cb_histogram " +  '"' + cb_histogram + '"') else ""} \
      ~{if defined(cb_cut_off) then ("--cb_cutoff " +  '"' + cb_cut_off + '"') else ""}
  >>>
  parameter_meta {
    out_dir: ""
    cb_histogram: ""
    cb_cut_off: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}