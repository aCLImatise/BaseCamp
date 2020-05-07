version 1.0

task GmxTrjconvTrj {
  input {
    String configConfig
    String inputInputTRajPath
    String inputInputIndexPath
    String outputOutputTRajPath
  }
  command <<<
    gmx_trjconv_trj \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputTRajPath) then ("--input_traj_path " +  '"' + inputInputTRajPath + '"') else ""} \
      ~{if defined(inputInputIndexPath) then ("--input_index_path " +  '"' + inputInputIndexPath + '"') else ""} \
      ~{if defined(outputOutputTRajPath) then ("--output_traj_path " +  '"' + outputOutputTRajPath + '"') else ""}
  >>>
}