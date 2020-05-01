version 1.0

task ScaleMetagenome.py {
  input {
    String inputInputSeqDepthFile
    String inputInputCountTable
    String outputOutputMetaGenomeTable
  }
  command <<<
    scale_metagenome.py \
      ~{if defined(inputInputSeqDepthFile) then ("--input_seq_depth_file " +  '"' + inputInputSeqDepthFile + '"') else ""} \
      ~{if defined(inputInputCountTable) then ("--input_count_table " +  '"' + inputInputCountTable + '"') else ""} \
      ~{if defined(outputOutputMetaGenomeTable) then ("--output_metagenome_table " +  '"' + outputOutputMetaGenomeTable + '"') else ""}
  >>>
}