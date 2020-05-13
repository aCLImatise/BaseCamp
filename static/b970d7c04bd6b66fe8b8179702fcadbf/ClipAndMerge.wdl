version 1.0

task ClipAndMerge {
  input {
    Boolean discardDiscardBadReads
    String eE
    String fF
    String in1In1
    String in2In2
    Int lL
    Int lastLastBase
    String logLog
    Int mM
    String maxMaxParallelReads
    Int minMinQualBadReads
    Boolean nN
    Boolean noNoClipStats
    Boolean noNoClipping
    Boolean noNoMerging
    Boolean noNoQbMm
    String oO
    Int pP
    Int qQ
    Int qoQo
    Boolean qtQt
    String qualQualFreqBadReads
    String rR
    Boolean rmRmNoPartner
    Boolean timeTimeEstimation
    Int trim3pTrim3p
    Int trim5pTrim5p
    String uU
    Boolean verboseVerbose
  }
  command <<<
    ClipAndMerge \
      ~{true="-discardBadReads" false="" discardDiscardBadReads} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lastLastBase) then ("-lastBase " +  '"' + lastLastBase + '"') else ""} \
      ~{if defined(logLog) then ("-log " +  '"' + logLog + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(maxMaxParallelReads) then ("-maxParallelReads " +  '"' + maxMaxParallelReads + '"') else ""} \
      ~{if defined(minMinQualBadReads) then ("-minQualBadReads " +  '"' + minMinQualBadReads + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-no_clip_stats" false="" noNoClipStats} \
      ~{true="-no_clipping" false="" noNoClipping} \
      ~{true="-no_merging" false="" noNoMerging} \
      ~{true="-no_qbMM" false="" noNoQbMm} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qoQo) then ("-qo " +  '"' + qoQo + '"') else ""} \
      ~{true="-qt" false="" qtQt} \
      ~{if defined(qualQualFreqBadReads) then ("-qualFreqBadReads " +  '"' + qualQualFreqBadReads + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-rm_no_partner" false="" rmRmNoPartner} \
      ~{true="-timeEstimation" false="" timeTimeEstimation} \
      ~{if defined(trim3pTrim3p) then ("-trim3p " +  '"' + trim3pTrim3p + '"') else ""} \
      ~{if defined(trim5pTrim5p) then ("-trim5p " +  '"' + trim5pTrim5p + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}