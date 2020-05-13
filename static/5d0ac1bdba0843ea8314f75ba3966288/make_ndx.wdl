version 1.0

task MakeNdx {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputStructurePath
    String outputOutputNdxPath
    String inputInputNdxPath
  }
  command <<<
    make_ndx \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(outputOutputNdxPath) then ("--output_ndx_path " +  '"' + outputOutputNdxPath + '"') else ""} \
      ~{if defined(inputInputNdxPath) then ("--input_ndx_path " +  '"' + inputInputNdxPath + '"') else ""}
  >>>
}