version 1.0

task Mdrun {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputTprPath
    String outputOutputTrrPath
    String outputOutputGroPath
    String outputOutputEdrPath
    String outputOutputLogPath
    String outputOutputXtcPath
    String outputOutputCptPath
    String outputOutputDHdlPath
  }
  command <<<
    mdrun \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputTprPath) then ("--input_tpr_path " +  '"' + inputInputTprPath + '"') else ""} \
      ~{if defined(outputOutputTrrPath) then ("--output_trr_path " +  '"' + outputOutputTrrPath + '"') else ""} \
      ~{if defined(outputOutputGroPath) then ("--output_gro_path " +  '"' + outputOutputGroPath + '"') else ""} \
      ~{if defined(outputOutputEdrPath) then ("--output_edr_path " +  '"' + outputOutputEdrPath + '"') else ""} \
      ~{if defined(outputOutputLogPath) then ("--output_log_path " +  '"' + outputOutputLogPath + '"') else ""} \
      ~{if defined(outputOutputXtcPath) then ("--output_xtc_path " +  '"' + outputOutputXtcPath + '"') else ""} \
      ~{if defined(outputOutputCptPath) then ("--output_cpt_path " +  '"' + outputOutputCptPath + '"') else ""} \
      ~{if defined(outputOutputDHdlPath) then ("--output_dhdl_path " +  '"' + outputOutputDHdlPath + '"') else ""}
  >>>
}