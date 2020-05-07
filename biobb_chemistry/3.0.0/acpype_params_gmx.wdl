version 1.0

task AcpypeParamsGmx {
  input {
    String configConfig
    String inputInputPath
    String outputOutputPathGro
    String outputOutputPathItp
    String outputOutputPathTop
  }
  command <<<
    acpype_params_gmx \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPathGro) then ("--output_path_gro " +  '"' + outputOutputPathGro + '"') else ""} \
      ~{if defined(outputOutputPathItp) then ("--output_path_itp " +  '"' + outputOutputPathItp + '"') else ""} \
      ~{if defined(outputOutputPathTop) then ("--output_path_top " +  '"' + outputOutputPathTop + '"') else ""}
  >>>
}