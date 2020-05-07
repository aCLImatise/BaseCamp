version 1.0

task TrflpFileToOtuTable.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    trflp_file_to_otu_table.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}