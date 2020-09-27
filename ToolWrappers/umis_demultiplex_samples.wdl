version 1.0

task UmisDemultiplexSamples {
  input {
    Int? out_dir
    String fast_q
  }
  command <<<
    umis demultiplex_samples \
      ~{fast_q} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "--nedit INTEGER\\n--barcodes FILENAME\\n--help               Show this message and exit.\\n"
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}