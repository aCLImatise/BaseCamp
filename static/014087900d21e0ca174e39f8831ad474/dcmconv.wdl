version 1.0

task Dcmconv {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean tT
    Boolean readReadXferDetect
    Boolean readReadXferLittle
    Boolean readReadXferBig
    Boolean readReadXferImplicit
    Boolean ignoreIgnoreMetaLength
    Boolean ignoreIgnoreExplicitVr
    Boolean assumeAssumeImplicit
    Boolean disableDisableCp246
    Boolean handleHandleParseErrors
    Boolean disableDisableCorrection
    Boolean transliterateTransliterate
    Boolean discardDiscardIllegal
    Boolean noNoInvalidGroups
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean abortAbortOversized
    String? dcmDcmFileIn
    String? dcmDcmFileOut
  }
  command <<<
    dcmconv \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="--read-xfer-detect" false="" readReadXferDetect} \
      ~{true="--read-xfer-little" false="" readReadXferLittle} \
      ~{true="--read-xfer-big" false="" readReadXferBig} \
      ~{true="--read-xfer-implicit" false="" readReadXferImplicit} \
      ~{true="--ignore-meta-length" false="" ignoreIgnoreMetaLength} \
      ~{true="--ignore-explicit-vr" false="" ignoreIgnoreExplicitVr} \
      ~{true="--assume-implicit" false="" assumeAssumeImplicit} \
      ~{true="--disable-cp246" false="" disableDisableCp246} \
      ~{true="--handle-parse-errors" false="" handleHandleParseErrors} \
      ~{true="--disable-correction" false="" disableDisableCorrection} \
      ~{true="--transliterate" false="" transliterateTransliterate} \
      ~{true="--discard-illegal" false="" discardDiscardIllegal} \
      ~{true="--no-invalid-groups" false="" noNoInvalidGroups} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="--abort-oversized" false="" abortAbortOversized} \
      ~{dcmDcmFileOut}
  >>>
}