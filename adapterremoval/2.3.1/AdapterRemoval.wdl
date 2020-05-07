version 1.0

task AdapterRemoval {
  input {
    Boolean identifyIdentifyAdapters
    String threadsThreads
    String qualityQualityBase
    String qualityQualityBaseOutput
    String qualityQualityMax
    String mateMateSeparator
    Boolean interleavedInterleaved
    Boolean interleavedInterleavedInput
    Boolean interleavedInterleavedOutput
    Boolean combinedCombinedOutput
    String basenameBasename
    File settingsSettings
    File outputOutput1
    File outputOutput2
    File singletonSingleton
    File outputOutputCollapsed
    File outputOutputCollapsedTruncated
    File discardedDiscarded
    Boolean gzipGzip
    String gzipGzipLevel
    Boolean bzip2Bzip2
    String bzip2Bzip2Level
    Boolean trimTrimNs
    Int maxMaxNs
    Boolean trimTrimQualities
    Int trimTrimWindows
    String minMinQuality
    Boolean preservePreserve5p
    Int minlengthMinlength
    Int maxlengthMaxlength
    Boolean collapseCollapse
    Boolean collapseCollapseDeterministic
    Int minMinAlignmentLength
    String seedSeed
    File barcodeBarcodeList
    String barcodeBarcodeMm
    String barcodeBarcodeMmR1
    String barcodeBarcodeMmR2
    Boolean demultiplexDemultiplexOnly
  }
  command <<<
    AdapterRemoval \
      ~{true="--identify-adapters" false="" identifyIdentifyAdapters} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(qualityQualityBase) then ("--qualitybase " +  '"' + qualityQualityBase + '"') else ""} \
      ~{if defined(qualityQualityBaseOutput) then ("--qualitybase-output " +  '"' + qualityQualityBaseOutput + '"') else ""} \
      ~{if defined(qualityQualityMax) then ("--qualitymax " +  '"' + qualityQualityMax + '"') else ""} \
      ~{if defined(mateMateSeparator) then ("--mate-separator " +  '"' + mateMateSeparator + '"') else ""} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{true="--interleaved-input" false="" interleavedInterleavedInput} \
      ~{true="--interleaved-output" false="" interleavedInterleavedOutput} \
      ~{true="--combined-output" false="" combinedCombinedOutput} \
      ~{if defined(basenameBasename) then ("--basename " +  '"' + basenameBasename + '"') else ""} \
      ~{if defined(settingsSettings) then ("--settings " +  '"' + settingsSettings + '"') else ""} \
      ~{if defined(outputOutput1) then ("--output1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(singletonSingleton) then ("--singleton " +  '"' + singletonSingleton + '"') else ""} \
      ~{if defined(outputOutputCollapsed) then ("--outputcollapsed " +  '"' + outputOutputCollapsed + '"') else ""} \
      ~{if defined(outputOutputCollapsedTruncated) then ("--outputcollapsedtruncated " +  '"' + outputOutputCollapsedTruncated + '"') else ""} \
      ~{if defined(discardedDiscarded) then ("--discarded " +  '"' + discardedDiscarded + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(gzipGzipLevel) then ("--gzip-level " +  '"' + gzipGzipLevel + '"') else ""} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{if defined(bzip2Bzip2Level) then ("--bzip2-level " +  '"' + bzip2Bzip2Level + '"') else ""} \
      ~{true="--trimns" false="" trimTrimNs} \
      ~{if defined(maxMaxNs) then ("--maxns " +  '"' + maxMaxNs + '"') else ""} \
      ~{true="--trimqualities" false="" trimTrimQualities} \
      ~{if defined(trimTrimWindows) then ("--trimwindows " +  '"' + trimTrimWindows + '"') else ""} \
      ~{if defined(minMinQuality) then ("--minquality " +  '"' + minMinQuality + '"') else ""} \
      ~{true="--preserve5p" false="" preservePreserve5p} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{true="--collapse" false="" collapseCollapse} \
      ~{true="--collapse-deterministic" false="" collapseCollapseDeterministic} \
      ~{if defined(minMinAlignmentLength) then ("--minalignmentlength " +  '"' + minMinAlignmentLength + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(barcodeBarcodeList) then ("--barcode-list " +  '"' + barcodeBarcodeList + '"') else ""} \
      ~{if defined(barcodeBarcodeMm) then ("--barcode-mm " +  '"' + barcodeBarcodeMm + '"') else ""} \
      ~{if defined(barcodeBarcodeMmR1) then ("--barcode-mm-r1 " +  '"' + barcodeBarcodeMmR1 + '"') else ""} \
      ~{if defined(barcodeBarcodeMmR2) then ("--barcode-mm-r2 " +  '"' + barcodeBarcodeMmR2 + '"') else ""} \
      ~{true="--demultiplex-only" false="" demultiplexDemultiplexOnly}
  >>>
}