version 1.0

task ComputeCoreMicrobiome.py {
  input {
    Boolean mappingMappingFp
    String inputInputFp
    String outputOutputDir
  }
  command <<<
    compute_core_microbiome.py \
      ~{true="--mapping_fp" false="" mappingMappingFp} \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}