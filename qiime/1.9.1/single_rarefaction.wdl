version 1.0

task SingleRarefaction.py {
  input {
    String inputInputPath
    String outputOutputPath
    String depthDepth
  }
  command <<<
    single_rarefaction.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""}
  >>>
}