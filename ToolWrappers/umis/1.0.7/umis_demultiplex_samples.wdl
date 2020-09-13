version 1.0

task UmisDemultiplexSamples {
  input {
    String? out_dir
    Int? nedit
    File? barcodes
    String sample_dot
  }
  command <<<
    umis demultiplex_samples \
      ~{sample_dot} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(nedit) then ("--nedit " +  '"' + nedit + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""}
  >>>
  parameter_meta {
    out_dir: ""
    nedit: ""
    barcodes: ""
    sample_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}