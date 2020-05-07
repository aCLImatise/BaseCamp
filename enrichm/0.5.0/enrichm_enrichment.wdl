version 1.0

task EnrichmEnrichment {
  input {
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    String annotateAnnotateOutput
    String metadataMetadata
    String annotationAnnotationMatrix
    String abundanceAbundance
    String abundanceAbundanceMetadata
    String transcriptomeTranscriptome
    String transcriptomeTranscriptomeMetadata
    String batchBatchFile
    String pvalPvalCutOff
    String proportionsProportionsCutOff
    String thresholdThreshold
    String multiMultiTestCorrection
    String processesProcesses
    Boolean allowAllowNegativeValues
    Boolean koKo
    Boolean koKoHmm
    Boolean pfamPfam
    Boolean tigrTigrFam
    Boolean clusterCluster
    Boolean orthologOrtholog
    Boolean caCaZy
    Boolean ecEc
  }
  command <<<
    enrichm enrichment \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(annotateAnnotateOutput) then ("--annotate_output " +  '"' + annotateAnnotateOutput + '"') else ""} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(annotationAnnotationMatrix) then ("--annotation_matrix " +  '"' + annotationAnnotationMatrix + '"') else ""} \
      ~{if defined(abundanceAbundance) then ("--abundance " +  '"' + abundanceAbundance + '"') else ""} \
      ~{if defined(abundanceAbundanceMetadata) then ("--abundance_metadata " +  '"' + abundanceAbundanceMetadata + '"') else ""} \
      ~{if defined(transcriptomeTranscriptome) then ("--transcriptome " +  '"' + transcriptomeTranscriptome + '"') else ""} \
      ~{if defined(transcriptomeTranscriptomeMetadata) then ("--transcriptome_metadata " +  '"' + transcriptomeTranscriptomeMetadata + '"') else ""} \
      ~{if defined(batchBatchFile) then ("--batchfile " +  '"' + batchBatchFile + '"') else ""} \
      ~{if defined(pvalPvalCutOff) then ("--pval_cutoff " +  '"' + pvalPvalCutOff + '"') else ""} \
      ~{if defined(proportionsProportionsCutOff) then ("--proportions_cutoff " +  '"' + proportionsProportionsCutOff + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(multiMultiTestCorrection) then ("--multi_test_correction " +  '"' + multiMultiTestCorrection + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--allow_negative_values" false="" allowAllowNegativeValues} \
      ~{true="--ko" false="" koKo} \
      ~{true="--ko_hmm" false="" koKoHmm} \
      ~{true="--pfam" false="" pfamPfam} \
      ~{true="--tigrfam" false="" tigrTigrFam} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{true="--ortholog" false="" orthologOrtholog} \
      ~{true="--cazy" false="" caCaZy} \
      ~{true="--ec" false="" ecEc}
  >>>
}