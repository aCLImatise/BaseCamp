version 1.0

task Ndx2resttop {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputNdxPath
    String inputInputTopZipPath
    String outputOutputTopZipPath
  }
  command <<<
    ndx2resttop \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputNdxPath) then ("--input_ndx_path " +  '"' + inputInputNdxPath + '"') else ""} \
      ~{if defined(inputInputTopZipPath) then ("--input_top_zip_path " +  '"' + inputInputTopZipPath + '"') else ""} \
      ~{if defined(outputOutputTopZipPath) then ("--output_top_zip_path " +  '"' + outputOutputTopZipPath + '"') else ""}
  >>>
}