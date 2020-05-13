version 1.0

task RsemCalculateExpression {
  input {
    Boolean pP
    Boolean alignmentsAlignments
    File faiFai
    Boolean bowtie2Bowtie2
    Boolean starStar
    Boolean hisat2Hisat2Hca
    Boolean appendAppendNames
    String seedSeed
    Boolean singleSingleCellPrior
    Boolean calcCalcPmE
    Boolean calcCalcCi
    Boolean qQ
    Boolean sortSortBamByReadName
    Boolean noNoBamOutput
    Boolean samplingSamplingForBam
    Boolean outputOutputGenomeBam
    Boolean sortSortBamByCoordinate
    String sortSortBamMemoryPerThread
    Int seedSeedLength
    Boolean phred33Phred33Quals
    Boolean phred64Phred64Quals
    Boolean solexaSolexaQuals
    File bowtieBowtiePath
    Int bowtieBowtieN
    Int bowtieBowtieE
    Int bowtieBowtieM
    Int bowtieBowtieChunkMbs
    File bowtie2Bowtie2Path
    String bowtie2Bowtie2MismatchRate
    Int bowtie2Bowtie2K
    String bowtie2Bowtie2SensitivityLevel
    File starStarPath
    Boolean starStarGzippedReadFile
    Boolean starStarBZippedReadFile
    Boolean starStarOutputGenomeBam
    File hisat2Hisat2Path
    String tagTag
    Int fragmentFragmentLengthMin
    Int fragmentFragmentLengthMax
    String fragmentFragmentLengthMean
    String fragmentFragmentLengthSd
    Boolean estimateEstimateRSpd
    Int numNumRSpdBins
    Int gibbsGibbsBurnin
    Int gibbsGibbsNumberOfSamples
    Int gibbsGibbsSamplingGap
    String ciCiCredibilityLevel
    Int ciCiMemory
    Int ciCiNumberOfSamplesPerCountVector
    Boolean keepKeepIntermediateFiles
    String temporaryTemporaryFolder
    Boolean timeTime
    Boolean runRunPrSem
    String chipsChipsEqPeakFile
    String chipsChipsEqTargetReadFiles
    String chipsChipsEqControlReadFiles
    String chipsChipsEqReadFilesMultiTargets
    String chipsChipsEqBedFilesMultiTargets
    Boolean capCapStackedChipsEqReads
    Int nNMaxStackedChipsEqReads
    String partitionPartitionModel
    Boolean samSam
    Boolean bamBam
    Boolean strandStrandSpecific
    String forwardForwardProb
    String? inputInput
    String? referenceReferenceName
    String? sampleSampleName
  }
  command <<<
    rsem-calculate-expression \
      ~{inputInput} \
      ~{true="-p" false="" pP} \
      ~{true="--alignments" false="" alignmentsAlignments} \
      ~{if defined(faiFai) then ("--fai " +  '"' + faiFai + '"') else ""} \
      ~{true="--bowtie2" false="" bowtie2Bowtie2} \
      ~{true="--star" false="" starStar} \
      ~{true="--hisat2-hca" false="" hisat2Hisat2Hca} \
      ~{true="--append-names" false="" appendAppendNames} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--single-cell-prior" false="" singleSingleCellPrior} \
      ~{true="--calc-pme" false="" calcCalcPmE} \
      ~{true="--calc-ci" false="" calcCalcCi} \
      ~{true="-q" false="" qQ} \
      ~{true="--sort-bam-by-read-name" false="" sortSortBamByReadName} \
      ~{true="--no-bam-output" false="" noNoBamOutput} \
      ~{true="--sampling-for-bam" false="" samplingSamplingForBam} \
      ~{true="--output-genome-bam" false="" outputOutputGenomeBam} \
      ~{true="--sort-bam-by-coordinate" false="" sortSortBamByCoordinate} \
      ~{if defined(sortSortBamMemoryPerThread) then ("--sort-bam-memory-per-thread " +  '"' + sortSortBamMemoryPerThread + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{true="--phred33-quals" false="" phred33Phred33Quals} \
      ~{true="--phred64-quals" false="" phred64Phred64Quals} \
      ~{true="--solexa-quals" false="" solexaSolexaQuals} \
      ~{if defined(bowtieBowtiePath) then ("--bowtie-path " +  '"' + bowtieBowtiePath + '"') else ""} \
      ~{if defined(bowtieBowtieN) then ("--bowtie-n " +  '"' + bowtieBowtieN + '"') else ""} \
      ~{if defined(bowtieBowtieE) then ("--bowtie-e " +  '"' + bowtieBowtieE + '"') else ""} \
      ~{if defined(bowtieBowtieM) then ("--bowtie-m " +  '"' + bowtieBowtieM + '"') else ""} \
      ~{if defined(bowtieBowtieChunkMbs) then ("--bowtie-chunkmbs " +  '"' + bowtieBowtieChunkMbs + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Path) then ("--bowtie2-path " +  '"' + bowtie2Bowtie2Path + '"') else ""} \
      ~{if defined(bowtie2Bowtie2MismatchRate) then ("--bowtie2-mismatch-rate " +  '"' + bowtie2Bowtie2MismatchRate + '"') else ""} \
      ~{if defined(bowtie2Bowtie2K) then ("--bowtie2-k " +  '"' + bowtie2Bowtie2K + '"') else ""} \
      ~{if defined(bowtie2Bowtie2SensitivityLevel) then ("--bowtie2-sensitivity-level " +  '"' + bowtie2Bowtie2SensitivityLevel + '"') else ""} \
      ~{if defined(starStarPath) then ("--star-path " +  '"' + starStarPath + '"') else ""} \
      ~{true="--star-gzipped-read-file" false="" starStarGzippedReadFile} \
      ~{true="--star-bzipped-read-file" false="" starStarBZippedReadFile} \
      ~{true="--star-output-genome-bam" false="" starStarOutputGenomeBam} \
      ~{if defined(hisat2Hisat2Path) then ("--hisat2-path " +  '"' + hisat2Hisat2Path + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(fragmentFragmentLengthMin) then ("--fragment-length-min " +  '"' + fragmentFragmentLengthMin + '"') else ""} \
      ~{if defined(fragmentFragmentLengthMax) then ("--fragment-length-max " +  '"' + fragmentFragmentLengthMax + '"') else ""} \
      ~{if defined(fragmentFragmentLengthMean) then ("--fragment-length-mean " +  '"' + fragmentFragmentLengthMean + '"') else ""} \
      ~{if defined(fragmentFragmentLengthSd) then ("--fragment-length-sd " +  '"' + fragmentFragmentLengthSd + '"') else ""} \
      ~{true="--estimate-rspd" false="" estimateEstimateRSpd} \
      ~{if defined(numNumRSpdBins) then ("--num-rspd-bins " +  '"' + numNumRSpdBins + '"') else ""} \
      ~{if defined(gibbsGibbsBurnin) then ("--gibbs-burnin " +  '"' + gibbsGibbsBurnin + '"') else ""} \
      ~{if defined(gibbsGibbsNumberOfSamples) then ("--gibbs-number-of-samples " +  '"' + gibbsGibbsNumberOfSamples + '"') else ""} \
      ~{if defined(gibbsGibbsSamplingGap) then ("--gibbs-sampling-gap " +  '"' + gibbsGibbsSamplingGap + '"') else ""} \
      ~{if defined(ciCiCredibilityLevel) then ("--ci-credibility-level " +  '"' + ciCiCredibilityLevel + '"') else ""} \
      ~{if defined(ciCiMemory) then ("--ci-memory " +  '"' + ciCiMemory + '"') else ""} \
      ~{if defined(ciCiNumberOfSamplesPerCountVector) then ("--ci-number-of-samples-per-count-vector " +  '"' + ciCiNumberOfSamplesPerCountVector + '"') else ""} \
      ~{true="--keep-intermediate-files" false="" keepKeepIntermediateFiles} \
      ~{if defined(temporaryTemporaryFolder) then ("--temporary-folder " +  '"' + temporaryTemporaryFolder + '"') else ""} \
      ~{true="--time" false="" timeTime} \
      ~{true="--run-pRSEM" false="" runRunPrSem} \
      ~{if defined(chipsChipsEqPeakFile) then ("--chipseq-peak-file " +  '"' + chipsChipsEqPeakFile + '"') else ""} \
      ~{if defined(chipsChipsEqTargetReadFiles) then ("--chipseq-target-read-files " +  '"' + chipsChipsEqTargetReadFiles + '"') else ""} \
      ~{if defined(chipsChipsEqControlReadFiles) then ("--chipseq-control-read-files " +  '"' + chipsChipsEqControlReadFiles + '"') else ""} \
      ~{if defined(chipsChipsEqReadFilesMultiTargets) then ("--chipseq-read-files-multi-targets " +  '"' + chipsChipsEqReadFilesMultiTargets + '"') else ""} \
      ~{if defined(chipsChipsEqBedFilesMultiTargets) then ("--chipseq-bed-files-multi-targets " +  '"' + chipsChipsEqBedFilesMultiTargets + '"') else ""} \
      ~{true="--cap-stacked-chipseq-reads" false="" capCapStackedChipsEqReads} \
      ~{if defined(nNMaxStackedChipsEqReads) then ("--n-max-stacked-chipseq-reads " +  '"' + nNMaxStackedChipsEqReads + '"') else ""} \
      ~{if defined(partitionPartitionModel) then ("--partition-model " +  '"' + partitionPartitionModel + '"') else ""} \
      ~{true="--sam" false="" samSam} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{if defined(forwardForwardProb) then ("--forward-prob " +  '"' + forwardForwardProb + '"') else ""} \
      ~{referenceReferenceName} \
      ~{sampleSampleName}
  >>>
}