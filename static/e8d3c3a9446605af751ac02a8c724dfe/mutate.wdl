version 1.0

task Mutate {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputStructurePath
    String outputOutputStructurePath
    String inputInputMutationsPath
    String inputInputBStructurePath
  }
  command <<<
    mutate \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputStructurePath) then ("--input_structure_path " +  '"' + inputInputStructurePath + '"') else ""} \
      ~{if defined(outputOutputStructurePath) then ("--output_structure_path " +  '"' + outputOutputStructurePath + '"') else ""} \
      ~{if defined(inputInputMutationsPath) then ("--input_mutations_path " +  '"' + inputInputMutationsPath + '"') else ""} \
      ~{if defined(inputInputBStructurePath) then ("--input_b_structure_path " +  '"' + inputInputBStructurePath + '"') else ""}
  >>>
}