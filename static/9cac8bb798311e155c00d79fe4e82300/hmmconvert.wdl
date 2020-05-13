version 1.0

task Hmmconvert {
  input {
    String modelModelFile
    Boolean binaryBinaryOutput
    String? runRunName
  }
  command <<<
    hmmconvert \
      ~{runRunName} \
      ~{if defined(modelModelFile) then ("-model_file " +  '"' + modelModelFile + '"') else ""} \
      ~{true="-binary_output" false="" binaryBinaryOutput}
  >>>
}