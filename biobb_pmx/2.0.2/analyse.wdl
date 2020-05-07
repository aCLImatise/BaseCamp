version 1.0

task Analyse {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputAXVgZipPath
    String inputInputBXVgZipPath
    String outputOutputResultPath
    String outputOutputWorkPlotPath
  }
  command <<<
    analyse \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputAXVgZipPath) then ("--input_A_xvg_zip_path " +  '"' + inputInputAXVgZipPath + '"') else ""} \
      ~{if defined(inputInputBXVgZipPath) then ("--input_B_xvg_zip_path " +  '"' + inputInputBXVgZipPath + '"') else ""} \
      ~{if defined(outputOutputResultPath) then ("--output_result_path " +  '"' + outputOutputResultPath + '"') else ""} \
      ~{if defined(outputOutputWorkPlotPath) then ("--output_work_plot_path " +  '"' + outputOutputWorkPlotPath + '"') else ""}
  >>>
}