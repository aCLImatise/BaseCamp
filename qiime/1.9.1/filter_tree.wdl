version 1.0

task FilterTree.py {
  input {
    String inputInputTreeFilePath
    String outputOutputTreeFilePath
  }
  command <<<
    filter_tree.py \
      ~{if defined(inputInputTreeFilePath) then ("--input_tree_filepath " +  '"' + inputInputTreeFilePath + '"') else ""} \
      ~{if defined(outputOutputTreeFilePath) then ("--output_tree_filepath " +  '"' + outputOutputTreeFilePath + '"') else ""}
  >>>
}