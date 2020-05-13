version 1.0

task GmxRgyr {
  input {
    String configConfig
    String inputInputStructurePath
    String inputInputTRajPath
    String inputInputIndexPath
    String outputOutputXVgPath
  }
  command <<<
    gmx_rgyr \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(inputInputTRajPath) then ("--input_traj_path " +  '"' + inputInputTRajPath + '"') else ""} \
      ~{if defined(inputInputIndexPath) then ("--input_index_path " +  '"' + inputInputIndexPath + '"') else ""} \
      ~{if defined(outputOutputXVgPath) then ("--output_xvg_path " +  '"' + outputOutputXVgPath + '"') else ""}
  >>>
}