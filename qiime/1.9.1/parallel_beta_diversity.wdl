version 1.0

task ParallelBetaDiversity.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    parallel_beta_diversity.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}