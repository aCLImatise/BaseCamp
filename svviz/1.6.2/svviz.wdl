version 1.0

task Svviz {
  input {
    String bamBam
    String typeType
    String annotationsAnnotations
    String fastFastA
    String minMinMapq
    String pairPairMinMapq
    Int maxMaxMultiMappingSimilarity
    String alnAlnQuality
    String alnAlnScoreDelta
    Boolean includeIncludeSupplementary
    Boolean fastFast
    String sampleSampleReads
    Int maxMaxReads
    Int maxMaxSize
    Int maxMaxDeletionSize
    String portPort
    String processesProcesses
    Boolean noNoWeb
    String saveSaveReads
    String verboseVerbose
    String exportExport
    String formatFormat
    Boolean openOpenExported
    String converterConverter
    Boolean thickerThickerLines
    String contextContext
    Boolean flanksFlanks
    Boolean skipSkipCigar
    Boolean dotDotPlots
    Boolean exportExportInsertSizes
    String summarySummary
    Boolean lenientLenient
    String? refRef
    String? breakpointsBreakpoints
  }
  command <<<
    svviz \
      ~{refRef} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(annotationsAnnotations) then ("--annotations " +  '"' + annotationsAnnotations + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(pairPairMinMapq) then ("--pair-min-mapq " +  '"' + pairPairMinMapq + '"') else ""} \
      ~{if defined(maxMaxMultiMappingSimilarity) then ("--max-multimapping-similarity " +  '"' + maxMaxMultiMappingSimilarity + '"') else ""} \
      ~{if defined(alnAlnQuality) then ("--aln-quality " +  '"' + alnAlnQuality + '"') else ""} \
      ~{if defined(alnAlnScoreDelta) then ("--aln-score-delta " +  '"' + alnAlnScoreDelta + '"') else ""} \
      ~{true="--include-supplementary" false="" includeIncludeSupplementary} \
      ~{true="--fast" false="" fastFast} \
      ~{if defined(sampleSampleReads) then ("--sample-reads " +  '"' + sampleSampleReads + '"') else ""} \
      ~{if defined(maxMaxReads) then ("--max-reads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max-size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(maxMaxDeletionSize) then ("--max-deletion-size " +  '"' + maxMaxDeletionSize + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--no-web" false="" noNoWeb} \
      ~{if defined(saveSaveReads) then ("--save-reads " +  '"' + saveSaveReads + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(exportExport) then ("--export " +  '"' + exportExport + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--open-exported" false="" openOpenExported} \
      ~{if defined(converterConverter) then ("--converter " +  '"' + converterConverter + '"') else ""} \
      ~{true="--thicker-lines" false="" thickerThickerLines} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{true="--flanks" false="" flanksFlanks} \
      ~{true="--skip-cigar" false="" skipSkipCigar} \
      ~{true="--dotplots" false="" dotDotPlots} \
      ~{true="--export-insert-sizes" false="" exportExportInsertSizes} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="--lenient" false="" lenientLenient} \
      ~{breakpointsBreakpoints}
  >>>
}