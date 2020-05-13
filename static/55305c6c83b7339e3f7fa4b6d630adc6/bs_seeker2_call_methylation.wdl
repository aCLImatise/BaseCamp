version 1.0

task BsSeeker2CallMethylation.py {
  input {
    String inputInput
    String dbDb
    String outputOutputPrefix
    Boolean sortedSorted
    String wigWig
    String cgCgMap
    String atAtCgMap
    Boolean rmRmSx
    Boolean rmRmCcgg
    Boolean rmRmOverlap
    Boolean txtTxt
    String readReadNo
    String pilePileUpMaxdepth
  }
  command <<<
    bs_seeker2-call_methylation.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(wigWig) then ("--wig " +  '"' + wigWig + '"') else ""} \
      ~{if defined(cgCgMap) then ("--CGmap " +  '"' + cgCgMap + '"') else ""} \
      ~{if defined(atAtCgMap) then ("--ATCGmap " +  '"' + atAtCgMap + '"') else ""} \
      ~{true="--rm-SX" false="" rmRmSx} \
      ~{true="--rm-CCGG" false="" rmRmCcgg} \
      ~{true="--rm-overlap" false="" rmRmOverlap} \
      ~{true="--txt" false="" txtTxt} \
      ~{if defined(readReadNo) then ("--read-no " +  '"' + readReadNo + '"') else ""} \
      ~{if defined(pilePileUpMaxdepth) then ("--pileup-maxdepth " +  '"' + pilePileUpMaxdepth + '"') else ""}
  >>>
}