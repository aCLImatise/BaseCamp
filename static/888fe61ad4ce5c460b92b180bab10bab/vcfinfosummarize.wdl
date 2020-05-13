version 1.0

task Vcfinfosummarize {
  input {
    Boolean fieldField
    Boolean infoInfo
    Boolean averageAverage
    Boolean medianMedian
    Boolean minMin
    Boolean maxMax
    String? vcfVcfFile
  }
  command <<<
    vcfinfosummarize \
      ~{vcfVcfFile} \
      ~{true="--field" false="" fieldField} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--average" false="" averageAverage} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax}
  >>>
}