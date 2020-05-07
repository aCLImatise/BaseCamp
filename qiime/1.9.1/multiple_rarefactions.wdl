version 1.0

task MultipleRarefactions.py {
  input {
    String inputInputPath
    String outputOutputPath
    Int minMin
    Int maxMax
    String stepStep
  }
  command <<<
    multiple_rarefactions.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""}
  >>>
}