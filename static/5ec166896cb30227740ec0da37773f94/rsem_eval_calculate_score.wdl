version 1.0

task RsemEvalCalculateScore {
  input {
    Int overlapOverlapSize
    File transcriptTranscriptLengthParameters
    String transcriptTranscriptLengthMean
    String transcriptTranscriptLengthSd
    Boolean pairedPairedEnd
    Boolean noNoQualities
    Boolean strandStrandSpecific
    Boolean bowtie2Bowtie2
    Boolean samSam
    Boolean bamBam
    Boolean pP
    Boolean outputOutputBam
    Boolean samplingSamplingForBam
    String seedSeed
    Boolean qQ
    File samSamHeaderInfo
    Int seedSeedLength
    String tagTag
    File bowtieBowtiePath
    Int bowtieBowtieN
    Int bowtieBowtieE
    Int bowtieBowtieM
    Int bowtieBowtieChunkMbs
    Boolean phred33Phred33Quals
    Boolean phred64Phred64Quals
    Boolean solexaSolexaQuals
    File bowtie2Bowtie2Path
    String bowtie2Bowtie2MismatchRate
    Int bowtie2Bowtie2K
    String bowtie2Bowtie2SensitivityLevel
    String forwardForwardProb
    Int fragmentFragmentLengthMin
    Int fragmentFragmentLengthMax
    Boolean estimateEstimateRSpd
    Int numNumRSpdBins
    String samSamToolsSortMem
    Boolean keepKeepIntermediateFiles
    String temporaryTemporaryFolder
    Boolean timeTime
    String? inputInput
    String? assemblyAssemblyFastAFile
    String? sampleSampleName
    String? lL
  }
  command <<<
    rsem-eval-calculate-score \
      ~{inputInput} \
      ~{if defined(overlapOverlapSize) then ("--overlap-size " +  '"' + overlapOverlapSize + '"') else ""} \
      ~{if defined(transcriptTranscriptLengthParameters) then ("--transcript-length-parameters " +  '"' + transcriptTranscriptLengthParameters + '"') else ""} \
      ~{if defined(transcriptTranscriptLengthMean) then ("--transcript-length-mean " +  '"' + transcriptTranscriptLengthMean + '"') else ""} \
      ~{if defined(transcriptTranscriptLengthSd) then ("--transcript-length-sd " +  '"' + transcriptTranscriptLengthSd + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--no-qualities" false="" noNoQualities} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{true="--bowtie2" false="" bowtie2Bowtie2} \
      ~{true="--sam" false="" samSam} \
      ~{true="--bam" false="" bamBam} \
      ~{true="-p" false="" pP} \
      ~{true="--output-bam" false="" outputOutputBam} \
      ~{true="--sampling-for-bam" false="" samplingSamplingForBam} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(samSamHeaderInfo) then ("--sam-header-info " +  '"' + samSamHeaderInfo + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(bowtieBowtiePath) then ("--bowtie-path " +  '"' + bowtieBowtiePath + '"') else ""} \
      ~{if defined(bowtieBowtieN) then ("--bowtie-n " +  '"' + bowtieBowtieN + '"') else ""} \
      ~{if defined(bowtieBowtieE) then ("--bowtie-e " +  '"' + bowtieBowtieE + '"') else ""} \
      ~{if defined(bowtieBowtieM) then ("--bowtie-m " +  '"' + bowtieBowtieM + '"') else ""} \
      ~{if defined(bowtieBowtieChunkMbs) then ("--bowtie-chunkmbs " +  '"' + bowtieBowtieChunkMbs + '"') else ""} \
      ~{true="--phred33-quals" false="" phred33Phred33Quals} \
      ~{true="--phred64-quals" false="" phred64Phred64Quals} \
      ~{true="--solexa-quals" false="" solexaSolexaQuals} \
      ~{if defined(bowtie2Bowtie2Path) then ("--bowtie2-path " +  '"' + bowtie2Bowtie2Path + '"') else ""} \
      ~{if defined(bowtie2Bowtie2MismatchRate) then ("--bowtie2-mismatch-rate " +  '"' + bowtie2Bowtie2MismatchRate + '"') else ""} \
      ~{if defined(bowtie2Bowtie2K) then ("--bowtie2-k " +  '"' + bowtie2Bowtie2K + '"') else ""} \
      ~{if defined(bowtie2Bowtie2SensitivityLevel) then ("--bowtie2-sensitivity-level " +  '"' + bowtie2Bowtie2SensitivityLevel + '"') else ""} \
      ~{if defined(forwardForwardProb) then ("--forward-prob " +  '"' + forwardForwardProb + '"') else ""} \
      ~{if defined(fragmentFragmentLengthMin) then ("--fragment-length-min " +  '"' + fragmentFragmentLengthMin + '"') else ""} \
      ~{if defined(fragmentFragmentLengthMax) then ("--fragment-length-max " +  '"' + fragmentFragmentLengthMax + '"') else ""} \
      ~{true="--estimate-rspd" false="" estimateEstimateRSpd} \
      ~{if defined(numNumRSpdBins) then ("--num-rspd-bins " +  '"' + numNumRSpdBins + '"') else ""} \
      ~{if defined(samSamToolsSortMem) then ("--samtools-sort-mem " +  '"' + samSamToolsSortMem + '"') else ""} \
      ~{true="--keep-intermediate-files" false="" keepKeepIntermediateFiles} \
      ~{if defined(temporaryTemporaryFolder) then ("--temporary-folder " +  '"' + temporaryTemporaryFolder + '"') else ""} \
      ~{true="--time" false="" timeTime} \
      ~{assemblyAssemblyFastAFile} \
      ~{sampleSampleName} \
      ~{lL}
  >>>
}