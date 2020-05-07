version 1.0

task ParallelMultipleRarefactions.py {
  input {
    String inputInputPath
    String outputOutputPath
    Int minMin
    Int maxMax
  }
  command <<<
    parallel_multiple_rarefactions.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""}
  >>>
}