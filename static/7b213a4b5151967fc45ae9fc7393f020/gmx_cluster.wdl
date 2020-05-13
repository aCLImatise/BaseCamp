version 1.0

task GmxCluster {
  input {
    String configConfig
    String inputInputStructurePath
    String inputInputTRajPath
    String inputInputIndexPath
    String outputOutputPdbPath
  }
  command <<<
    gmx_cluster \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(inputInputTRajPath) then ("--input_traj_path " +  '"' + inputInputTRajPath + '"') else ""} \
      ~{if defined(inputInputIndexPath) then ("--input_index_path " +  '"' + inputInputIndexPath + '"') else ""} \
      ~{if defined(outputOutputPdbPath) then ("--output_pdb_path " +  '"' + outputOutputPdbPath + '"') else ""}
  >>>
}