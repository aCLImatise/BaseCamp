version 1.0

task QuasitoolsQuality {
  input {
    Directory outputOutputDir
    Boolean trimTrimReads
    Boolean maskMaskReads
    Int minMinReadQual
    Int lengthLengthCutOff
    Int scoreScoreCutOff
    Boolean medianMedian
    Boolean nsNs
  }
  command <<<
    quasitools quality \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--trim_reads" false="" trimTrimReads} \
      ~{true="--mask_reads" false="" maskMaskReads} \
      ~{if defined(minMinReadQual) then ("--min_read_qual " +  '"' + minMinReadQual + '"') else ""} \
      ~{if defined(lengthLengthCutOff) then ("--length_cutoff " +  '"' + lengthLengthCutOff + '"') else ""} \
      ~{if defined(scoreScoreCutOff) then ("--score_cutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--ns" false="" nsNs}
  >>>
}