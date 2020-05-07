version 1.0

task GmxTrjconvStr {
  input {
    String configConfig
    String inputInputStructurePath
    String inputInputTopPath
    String inputInputIndexPath
    String outputOutputStrPath
  }
  command <<<
    gmx_trjconv_str \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(inputInputTopPath) then ("--input_top_path " +  '"' + inputInputTopPath + '"') else ""} \
      ~{if defined(inputInputIndexPath) then ("--input_index_path " +  '"' + inputInputIndexPath + '"') else ""} \
      ~{if defined(outputOutputStrPath) then ("--output_str_path " +  '"' + outputOutputStrPath + '"') else ""}
  >>>
}