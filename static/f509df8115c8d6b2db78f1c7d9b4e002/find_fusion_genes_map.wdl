version 1.0

task FindFusionGenesMap.py {
  input {
    String inputInput
    String filterFilterGenePairs
    String filterFilterGenes
    String inputInputHugo
    String outputOutputFusionGenes
    String outputOutputFusionTranscripts
    String outputOutputFusionReads
    String outputOutputFusionReadsSplit
    String outputOutputFusionReadsSimple
    String outputOutputMissingMateReads
  }
  command <<<
    find_fusion_genes_map.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(filterFilterGenePairs) then ("--filter_gene_pairs " +  '"' + filterFilterGenePairs + '"') else ""} \
      ~{if defined(filterFilterGenes) then ("--filter_genes " +  '"' + filterFilterGenes + '"') else ""} \
      ~{if defined(inputInputHugo) then ("--input_hugo " +  '"' + inputInputHugo + '"') else ""} \
      ~{if defined(outputOutputFusionGenes) then ("--output_fusion_genes " +  '"' + outputOutputFusionGenes + '"') else ""} \
      ~{if defined(outputOutputFusionTranscripts) then ("--output_fusion_transcripts " +  '"' + outputOutputFusionTranscripts + '"') else ""} \
      ~{if defined(outputOutputFusionReads) then ("--output_fusion_reads " +  '"' + outputOutputFusionReads + '"') else ""} \
      ~{if defined(outputOutputFusionReadsSplit) then ("--output_fusion_reads_split " +  '"' + outputOutputFusionReadsSplit + '"') else ""} \
      ~{if defined(outputOutputFusionReadsSimple) then ("--output_fusion_reads_simple " +  '"' + outputOutputFusionReadsSimple + '"') else ""} \
      ~{if defined(outputOutputMissingMateReads) then ("--output_missing_mate_reads " +  '"' + outputOutputMissingMateReads + '"') else ""}
  >>>
}