version 1.0

task Dcmdump {
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
    Boolean noNoUidNames
    Boolean printPrintNonAscii
    Boolean cC
    Boolean pP
    String? dcmDcmFileIn
  }
  command <<<
    dcmdump \
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
      ~{true="--no-uid-names" false="" noNoUidNames} \
      ~{true="--print-nonascii" false="" printPrintNonAscii} \
      ~{true="-C" false="" cC} \
      ~{true="-p" false="" pP}
  >>>
}