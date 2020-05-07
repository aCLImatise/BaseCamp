version 1.0

task CleanRaxmlParsimonyTree.py {
  input {
    String inputInputTree
    String tipsTipsToKeep
    String outputOutputFp
  }
  command <<<
    clean_raxml_parsimony_tree.py \
      ~{if defined(inputInputTree) then ("--input_tree " +  '"' + inputInputTree + '"') else ""} \
      ~{if defined(tipsTipsToKeep) then ("--tips_to_keep " +  '"' + tipsTipsToKeep + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}