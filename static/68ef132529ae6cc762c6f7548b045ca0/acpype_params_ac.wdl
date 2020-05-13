version 1.0

task AcpypeParamsAc {
  input {
    String configConfig
    String inputInputPath
    String outputOutputPathFrcMod
    String outputOutputPathInPcRd
    String outputOutputPathLib
    String outputOutputPathPrmTop
  }
  command <<<
    acpype_params_ac \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPathFrcMod) then ("--output_path_frcmod " +  '"' + outputOutputPathFrcMod + '"') else ""} \
      ~{if defined(outputOutputPathInPcRd) then ("--output_path_inpcrd " +  '"' + outputOutputPathInPcRd + '"') else ""} \
      ~{if defined(outputOutputPathLib) then ("--output_path_lib " +  '"' + outputOutputPathLib + '"') else ""} \
      ~{if defined(outputOutputPathPrmTop) then ("--output_path_prmtop " +  '"' + outputOutputPathPrmTop + '"') else ""}
  >>>
}