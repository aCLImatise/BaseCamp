version 1.0

task NeighborJoining.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    neighbor_joining.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}