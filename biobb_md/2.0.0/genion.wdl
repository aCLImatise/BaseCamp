version 1.0

task Genion {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputTprPath
    String outputOutputGroPath
    String inputInputTopZipPath
    String outputOutputTopZipPath
  }
  command <<<
    genion \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputTprPath) then ("--input_tpr_path " +  '"' + inputInputTprPath + '"') else ""} \
      ~{if defined(outputOutputGroPath) then ("--output_gro_path " +  '"' + outputOutputGroPath + '"') else ""} \
      ~{if defined(inputInputTopZipPath) then ("--input_top_zip_path " +  '"' + inputInputTopZipPath + '"') else ""} \
      ~{if defined(outputOutputTopZipPath) then ("--output_top_zip_path " +  '"' + outputOutputTopZipPath + '"') else ""}
  >>>
}