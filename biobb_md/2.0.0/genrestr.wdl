version 1.0

task Genrestr {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputStructurePath
    String inputInputNdxPath
    String outputOutputItpPath
  }
  command <<<
    genrestr \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(inputInputNdxPath) then ("--input_ndx_path " +  '"' + inputInputNdxPath + '"') else ""} \
      ~{if defined(outputOutputItpPath) then ("--output_itp_path " +  '"' + outputOutputItpPath + '"') else ""}
  >>>
}