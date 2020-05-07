version 1.0

task LofreqSomatic {
  input {
    Boolean verboseVerbose
    String normalNormal
    String tumorTumor
    String outOutPrefix
    String refRef
    String bedBed
    String dbsnpDbsnp
    String threadsThreads
    String tumorTumorMtc
    String tumorTumorMtcAlpha
    String inInDelTumorMtc
    String inInDelTumorMtcAlpha
    Boolean callCallIndels
    Int minMinCov
    Boolean germlineGermline
    String ignIgnVcf
    Boolean useUseOrphan
    Boolean baqBaqOff
    String callCallRlxExtraArgs
    Boolean noNoSrcQual
    Boolean debugDebug
    Boolean continueContinue
  }
  command <<<
    lofreq somatic \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(normalNormal) then ("--normal " +  '"' + normalNormal + '"') else ""} \
      ~{if defined(tumorTumor) then ("--tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outprefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(dbsnpDbsnp) then ("--dbsnp " +  '"' + dbsnpDbsnp + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tumorTumorMtc) then ("--tumor-mtc " +  '"' + tumorTumorMtc + '"') else ""} \
      ~{if defined(tumorTumorMtcAlpha) then ("--tumor-mtc-alpha " +  '"' + tumorTumorMtcAlpha + '"') else ""} \
      ~{if defined(inInDelTumorMtc) then ("--indel-tumor-mtc " +  '"' + inInDelTumorMtc + '"') else ""} \
      ~{if defined(inInDelTumorMtcAlpha) then ("--indel-tumor-mtc-alpha " +  '"' + inInDelTumorMtcAlpha + '"') else ""} \
      ~{true="--call-indels" false="" callCallIndels} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{true="--germline" false="" germlineGermline} \
      ~{if defined(ignIgnVcf) then ("--ign-vcf " +  '"' + ignIgnVcf + '"') else ""} \
      ~{true="--use-orphan" false="" useUseOrphan} \
      ~{true="--baq-off" false="" baqBaqOff} \
      ~{if defined(callCallRlxExtraArgs) then ("--call-rlx-extra-args " +  '"' + callCallRlxExtraArgs + '"') else ""} \
      ~{true="--no-src-qual" false="" noNoSrcQual} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--continue" false="" continueContinue}
  >>>
}