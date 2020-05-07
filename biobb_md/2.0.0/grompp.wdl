version 1.0

task Grompp {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputGroPath
    String inputInputTopZipPath
    String outputOutputTprPath
    String inputInputCptPath
    String inputInputNdxPath
  }
  command <<<
    grompp \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputGroPath) then ("--input_gro_path " +  '"' + inputInputGroPath + '"') else ""} \
      ~{if defined(inputInputTopZipPath) then ("--input_top_zip_path " +  '"' + inputInputTopZipPath + '"') else ""} \
      ~{if defined(outputOutputTprPath) then ("--output_tpr_path " +  '"' + outputOutputTprPath + '"') else ""} \
      ~{if defined(inputInputCptPath) then ("--input_cpt_path " +  '"' + inputInputCptPath + '"') else ""} \
      ~{if defined(inputInputNdxPath) then ("--input_ndx_path " +  '"' + inputInputNdxPath + '"') else ""}
  >>>
}