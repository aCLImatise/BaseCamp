version 1.0

task SplitByP7BarcodeP5File {
  input {
    Boolean forceForce
    String? p5P5File
    String? p7P7File
  }
  command <<<
    split_by_p7_barcode p5_file \
      ~{p5P5File} \
      ~{true="--force" false="" forceForce} \
      ~{p7P7File}
  >>>
}