version 1.0

task Gentop {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputTopZipPath
    String outputOutputTopZipPath
    String outputOutputLogPath
  }
  command <<<
    gentop \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputTopZipPath) then ("--input_top_zip_path " +  '"' + inputInputTopZipPath + '"') else ""} \
      ~{if defined(outputOutputTopZipPath) then ("--output_top_zip_path " +  '"' + outputOutputTopZipPath + '"') else ""} \
      ~{if defined(outputOutputLogPath) then ("--output_log_path " +  '"' + outputOutputLogPath + '"') else ""}
  >>>
}