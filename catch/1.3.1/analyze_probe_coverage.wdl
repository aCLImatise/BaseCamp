version 1.0

task AnalyzeProbeCoverage.py {
  input {
    Array[String]+ datasetDataset
    String probesProbesFastA
    String mismatchesMismatches
    String lcfLcfThRes
    String islandIslandOfExactMatch
    String coverCoverExtension
    String limitLimitTargetGenomes
    Boolean printPrintAnalysis
    String writeWriteAnalysisToTsv
    String writeWriteSlidingWindowCoverage
    Int maxMaxNumProcesses
    String kmKmErProbeMapK
    Boolean debugDebug
    Boolean verboseVerbose
  }
  command <<<
    analyze_probe_coverage.py \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(probesProbesFastA) then ("--probes-fasta " +  '"' + probesProbesFastA + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(lcfLcfThRes) then ("--lcf-thres " +  '"' + lcfLcfThRes + '"') else ""} \
      ~{if defined(islandIslandOfExactMatch) then ("--island-of-exact-match " +  '"' + islandIslandOfExactMatch + '"') else ""} \
      ~{if defined(coverCoverExtension) then ("--cover-extension " +  '"' + coverCoverExtension + '"') else ""} \
      ~{if defined(limitLimitTargetGenomes) then ("--limit-target-genomes " +  '"' + limitLimitTargetGenomes + '"') else ""} \
      ~{true="--print-analysis" false="" printPrintAnalysis} \
      ~{if defined(writeWriteAnalysisToTsv) then ("--write-analysis-to-tsv " +  '"' + writeWriteAnalysisToTsv + '"') else ""} \
      ~{if defined(writeWriteSlidingWindowCoverage) then ("--write-sliding-window-coverage " +  '"' + writeWriteSlidingWindowCoverage + '"') else ""} \
      ~{if defined(maxMaxNumProcesses) then ("--max-num-processes " +  '"' + maxMaxNumProcesses + '"') else ""} \
      ~{if defined(kmKmErProbeMapK) then ("--kmer-probe-map-k " +  '"' + kmKmErProbeMapK + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}