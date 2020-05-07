version 1.0

task NanosimH {
  input {
    String profileProfile
    String outOutPref
    Int numberNumber
    Float unUnAlignRate
    Float misMisRate
    Float insInsRate
    Float delDelRate
    Int seedSeed
    Boolean circularCircular
    Boolean perfectPerfect
    Boolean mergeMergeContigs
    Boolean rnfRnf
    Boolean rnfRnfAddCigar
    Int maxMaxLen
    Int minMinLen
    Int kmKmErBias
  }
  command <<<
    nanosim-h \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(outOutPref) then ("--out-pref " +  '"' + outOutPref + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(unUnAlignRate) then ("--unalign-rate " +  '"' + unUnAlignRate + '"') else ""} \
      ~{if defined(misMisRate) then ("--mis-rate " +  '"' + misMisRate + '"') else ""} \
      ~{if defined(insInsRate) then ("--ins-rate " +  '"' + insInsRate + '"') else ""} \
      ~{if defined(delDelRate) then ("--del-rate " +  '"' + delDelRate + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--circular" false="" circularCircular} \
      ~{true="--perfect" false="" perfectPerfect} \
      ~{true="--merge-contigs" false="" mergeMergeContigs} \
      ~{true="--rnf" false="" rnfRnf} \
      ~{true="--rnf-add-cigar" false="" rnfRnfAddCigar} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(kmKmErBias) then ("--kmer-bias " +  '"' + kmKmErBias + '"') else ""}
  >>>
}