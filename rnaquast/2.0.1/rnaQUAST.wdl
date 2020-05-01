version 1.0

task RnaQUAST.py {
  input {
    String singleSingleReads
    String gmapGmapIndex
    String outputOutputDir
    Boolean testTest
    Boolean debugDebug
    String threadsThreads
    Array[String]+ labelsLabels
    Boolean strandStrandSpecific
    Int minMinAlignment
    Boolean noNoPlots
    Boolean blatBlat
    Boolean geneGeneMark
    Boolean metaMeta
    String lowerLowerThreshold
    String upperUpperThreshold
    Boolean prokaryoteProkaryote
    Boolean disableDisableInferGenes
    Boolean disableDisableInferTranscripts
    String buscoBuscoLineage
  }
  command <<<
    rnaQUAST.py \
      ~{if defined(singleSingleReads) then ("--single_reads " +  '"' + singleSingleReads + '"') else ""} \
      ~{if defined(gmapGmapIndex) then ("--gmap_index " +  '"' + gmapGmapIndex + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--strand_specific" false="" strandStrandSpecific} \
      ~{if defined(minMinAlignment) then ("--min_alignment " +  '"' + minMinAlignment + '"') else ""} \
      ~{true="--no_plots" false="" noNoPlots} \
      ~{true="--blat" false="" blatBlat} \
      ~{true="--gene_mark" false="" geneGeneMark} \
      ~{true="--meta" false="" metaMeta} \
      ~{if defined(lowerLowerThreshold) then ("--lower_threshold " +  '"' + lowerLowerThreshold + '"') else ""} \
      ~{if defined(upperUpperThreshold) then ("--upper_threshold " +  '"' + upperUpperThreshold + '"') else ""} \
      ~{true="--prokaryote" false="" prokaryoteProkaryote} \
      ~{true="--disable_infer_genes" false="" disableDisableInferGenes} \
      ~{true="--disable_infer_transcripts" false="" disableDisableInferTranscripts} \
      ~{if defined(buscoBuscoLineage) then ("--busco_lineage " +  '"' + buscoBuscoLineage + '"') else ""}
  >>>
}