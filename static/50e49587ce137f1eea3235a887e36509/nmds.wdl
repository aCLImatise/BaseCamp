version 1.0

task Nmds.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    nmds.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}