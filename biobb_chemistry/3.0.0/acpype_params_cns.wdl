version 1.0

task AcpypeParamsCns {
  input {
    String configConfig
    String inputInputPath
    String outputOutputPathPar
    String outputOutputPathInp
    String outputOutputPathTop
  }
  command <<<
    acpype_params_cns \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPathPar) then ("--output_path_par " +  '"' + outputOutputPathPar + '"') else ""} \
      ~{if defined(outputOutputPathInp) then ("--output_path_inp " +  '"' + outputOutputPathInp + '"') else ""} \
      ~{if defined(outputOutputPathTop) then ("--output_path_top " +  '"' + outputOutputPathTop + '"') else ""}
  >>>
}