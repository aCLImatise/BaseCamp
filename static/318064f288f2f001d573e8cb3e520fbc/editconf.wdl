version 1.0

task Editconf {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputGroPath
    String outputOutputGroPath
  }
  command <<<
    editconf \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputGroPath) then ("--input_gro_path " +  '"' + inputInputGroPath + '"') else ""} \
      ~{if defined(outputOutputGroPath) then ("--output_gro_path " +  '"' + outputOutputGroPath + '"') else ""}
  >>>
}