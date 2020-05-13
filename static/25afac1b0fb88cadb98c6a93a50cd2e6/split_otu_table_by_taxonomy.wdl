version 1.0

task SplitOtuTableByTaxonomy.py {
  input {
    String inputInputFp
    String outputOutputDir
    String levelLevel
  }
  command <<<
    split_otu_table_by_taxonomy.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""}
  >>>
}