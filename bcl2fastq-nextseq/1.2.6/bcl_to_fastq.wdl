version 1.0

task BclToFastq {
  input {
    String inputInputDir
    String runRunFolderDir
    String outputOutputDir
    String sampleSampleSheet
    Int loadingLoading
    Int demultiplexingDemultiplexing
    Int processingProcessing
    Int writingWriting
    Int barcodeBarcodeMismatches
    Boolean keepKeepTmp
    Boolean reverseReverseComplement
    Boolean noNoWait
    Boolean overwriteOverwrite
    Boolean determineDetermine
    Boolean noNoCleanup
  }
  command <<<
    bcl_to_fastq \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(runRunFolderDir) then ("--runfolder-dir " +  '"' + runRunFolderDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(sampleSampleSheet) then ("--sample-sheet " +  '"' + sampleSampleSheet + '"') else ""} \
      ~{if defined(loadingLoading) then ("--loading " +  '"' + loadingLoading + '"') else ""} \
      ~{if defined(demultiplexingDemultiplexing) then ("--demultiplexing " +  '"' + demultiplexingDemultiplexing + '"') else ""} \
      ~{if defined(processingProcessing) then ("--processing " +  '"' + processingProcessing + '"') else ""} \
      ~{if defined(writingWriting) then ("--writing " +  '"' + writingWriting + '"') else ""} \
      ~{if defined(barcodeBarcodeMismatches) then ("--barcode-mismatches " +  '"' + barcodeBarcodeMismatches + '"') else ""} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{true="--reverse-complement" false="" reverseReverseComplement} \
      ~{true="--no-wait" false="" noNoWait} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--determine" false="" determineDetermine} \
      ~{true="--no-cleanup" false="" noNoCleanup}
  >>>
}