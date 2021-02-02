version 1.0

task UmisKallisto {
  input {
    Int? out_dir
    String fast_q
  }
  command <<<
    umis kallisto \
      ~{fast_q} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "--cb_histogram TEXT\\n--cb_cutoff INTEGER\\n--help               Show this message and exit.\\n"
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}