version 1.0

task Multigrmpy.py {
  input {
    String inputInput
    String manifestManifest
    String outputOutput
    Boolean writeWriteAlignments
    Boolean inferInferReadHaplotypes
    String referenceReferenceSequence
    String threadsThreads
    Boolean keepKeepScratch
    String scratchScratchDir
    String grGrMpy
    String logLogFile
    String graphGraphSequenceMatching
    String kKLibSequenceMatching
    String kmKmErSequenceMatching
    String badBadAlignUniqKmErLen
    Boolean noNoAltSplitting
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean debugDebug
    String genotypingGenotypingParameters
    Int maxMaxReadsPerEvent
    String vcfVcfSplit
    String readReadLength
    Int maxMaxRefNodeLength
    Boolean retrieveRetrieveReferenceSequence
    String graphGraphType
    String insInsInfoKey
  }
  command <<<
    multigrmpy.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(manifestManifest) then ("--manifest " +  '"' + manifestManifest + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--write-alignments" false="" writeWriteAlignments} \
      ~{true="--infer-read-haplotypes" false="" inferInferReadHaplotypes} \
      ~{if defined(referenceReferenceSequence) then ("--reference-sequence " +  '"' + referenceReferenceSequence + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep-scratch" false="" keepKeepScratch} \
      ~{if defined(scratchScratchDir) then ("--scratch-dir " +  '"' + scratchScratchDir + '"') else ""} \
      ~{if defined(grGrMpy) then ("--grmpy " +  '"' + grGrMpy + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(graphGraphSequenceMatching) then ("--graph-sequence-matching " +  '"' + graphGraphSequenceMatching + '"') else ""} \
      ~{if defined(kKLibSequenceMatching) then ("--klib-sequence-matching " +  '"' + kKLibSequenceMatching + '"') else ""} \
      ~{if defined(kmKmErSequenceMatching) then ("--kmer-sequence-matching " +  '"' + kmKmErSequenceMatching + '"') else ""} \
      ~{if defined(badBadAlignUniqKmErLen) then ("--bad-align-uniq-kmer-len " +  '"' + badBadAlignUniqKmErLen + '"') else ""} \
      ~{true="--no-alt-splitting" false="" noNoAltSplitting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(genotypingGenotypingParameters) then ("--genotyping-parameters " +  '"' + genotypingGenotypingParameters + '"') else ""} \
      ~{if defined(maxMaxReadsPerEvent) then ("--max-reads-per-event " +  '"' + maxMaxReadsPerEvent + '"') else ""} \
      ~{if defined(vcfVcfSplit) then ("--vcf-split " +  '"' + vcfVcfSplit + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(maxMaxRefNodeLength) then ("--max-ref-node-length " +  '"' + maxMaxRefNodeLength + '"') else ""} \
      ~{true="--retrieve-reference-sequence" false="" retrieveRetrieveReferenceSequence} \
      ~{if defined(graphGraphType) then ("--graph-type " +  '"' + graphGraphType + '"') else ""} \
      ~{if defined(insInsInfoKey) then ("--ins-info-key " +  '"' + insInsInfoKey + '"') else ""}
  >>>
}