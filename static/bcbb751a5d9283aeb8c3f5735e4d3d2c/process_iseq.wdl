version 1.0

task ProcessIseq.py {
  input {
    String inputInputFps
    String outputOutputDir
    String barcodeBarcodeLength
  }
  command <<<
    process_iseq.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode_length " +  '"' + barcodeBarcodeLength + '"') else ""}
  >>>
}