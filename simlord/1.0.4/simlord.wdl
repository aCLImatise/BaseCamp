version 1.0

task Simlord {
  input {
    File saveSaveReference
    Int numNumReads
    Float coverageCoverage
    String chi2Chi2ParamsS
    String chi2Chi2ParamsN
    Int maxMaxPasses
    String sqrtSqrtParams
    String normNormParams
    Float probabilityProbabilityThreshold
    Float probProbIns
    Float probProbDel
    Float probProbSub
    Int minMinReadLength
    Boolean logLogNormReadLength
    Int fixedFixedReadLength
    Array[File]+ sampleSampleReadLengthFromFastQ
    File sampleSampleReadLengthFromText
    String samSamOutput
    Boolean noNoSam
    Boolean gzipGzip
    Boolean withoutWithoutNs
    Boolean uniformUniformChromosomeProbability
    Boolean oldOldReadNames
    String? outputOutputPrefix
  }
  command <<<
    simlord \
      ~{outputOutputPrefix} \
      ~{if defined(saveSaveReference) then ("--save-reference " +  '"' + saveSaveReference + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(chi2Chi2ParamsS) then ("--chi2-params-s " +  '"' + chi2Chi2ParamsS + '"') else ""} \
      ~{if defined(chi2Chi2ParamsN) then ("--chi2-params-n " +  '"' + chi2Chi2ParamsN + '"') else ""} \
      ~{if defined(maxMaxPasses) then ("--max-passes " +  '"' + maxMaxPasses + '"') else ""} \
      ~{if defined(sqrtSqrtParams) then ("--sqrt-params " +  '"' + sqrtSqrtParams + '"') else ""} \
      ~{if defined(normNormParams) then ("--norm-params " +  '"' + normNormParams + '"') else ""} \
      ~{if defined(probabilityProbabilityThreshold) then ("--probability-threshold " +  '"' + probabilityProbabilityThreshold + '"') else ""} \
      ~{if defined(probProbIns) then ("--prob-ins " +  '"' + probProbIns + '"') else ""} \
      ~{if defined(probProbDel) then ("--prob-del " +  '"' + probProbDel + '"') else ""} \
      ~{if defined(probProbSub) then ("--prob-sub " +  '"' + probProbSub + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min-readlength " +  '"' + minMinReadLength + '"') else ""} \
      ~{true="--lognorm-readlength" false="" logLogNormReadLength} \
      ~{if defined(fixedFixedReadLength) then ("--fixed-readlength " +  '"' + fixedFixedReadLength + '"') else ""} \
      ~{if defined(sampleSampleReadLengthFromFastQ) then ("--sample-readlength-from-fastq " +  '"' + sampleSampleReadLengthFromFastQ + '"') else ""} \
      ~{if defined(sampleSampleReadLengthFromText) then ("--sample-readlength-from-text " +  '"' + sampleSampleReadLengthFromText + '"') else ""} \
      ~{if defined(samSamOutput) then ("--sam-output " +  '"' + samSamOutput + '"') else ""} \
      ~{true="--no-sam" false="" noNoSam} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--without-ns" false="" withoutWithoutNs} \
      ~{true="--uniform-chromosome-probability" false="" uniformUniformChromosomeProbability} \
      ~{true="--old-read-names" false="" oldOldReadNames}
  >>>
}