version 1.0

task MultipleExtractBarcodes.py {
  input {
    String inputInputDir
    String outputOutputDir
  }
  command <<<
    multiple_extract_barcodes.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}