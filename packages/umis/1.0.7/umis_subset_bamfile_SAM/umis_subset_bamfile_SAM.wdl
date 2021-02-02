version 1.0

task UmisSubsetBamfileSAM {
  input {
    String barcodes
  }
  command <<<
    umis subset_bamfile SAM \
      ~{barcodes}
  >>>
  parameter_meta {
    barcodes: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}