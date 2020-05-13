version 1.0

task CollateAlpha.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    collate_alpha.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}