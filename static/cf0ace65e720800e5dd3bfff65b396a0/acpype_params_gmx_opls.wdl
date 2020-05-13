version 1.0

task AcpypeParamsGmxOpls {
  input {
    String configConfig
    String inputInputPath
    String outputOutputPathItp
    String outputOutputPathTop
  }
  command <<<
    acpype_params_gmx_opls \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPathItp) then ("--output_path_itp " +  '"' + outputOutputPathItp + '"') else ""} \
      ~{if defined(outputOutputPathTop) then ("--output_path_top " +  '"' + outputOutputPathTop + '"') else ""}
  >>>
}