version 1.0

task Dsr2html {
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
    Boolean processingProcessingDetails
    Boolean unknownUnknownRelationship
    Boolean invalidInvalidItemValue
    Boolean ignoreIgnoreConstraints
    Boolean ignoreIgnoreItemErrors
    Boolean skipSkipInvalidItems
    Boolean disableDisableVrChecker
    Boolean charsetCharsetCheckAll
    Boolean noNoDocumentHeader
    String? dsrDsrFileIn
    String? htmlHtmlFileOut
  }
  command <<<
    dsr2html \
      ~{dsrDsrFileIn} \
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
      ~{true="--processing-details" false="" processingProcessingDetails} \
      ~{true="--unknown-relationship" false="" unknownUnknownRelationship} \
      ~{true="--invalid-item-value" false="" invalidInvalidItemValue} \
      ~{true="--ignore-constraints" false="" ignoreIgnoreConstraints} \
      ~{true="--ignore-item-errors" false="" ignoreIgnoreItemErrors} \
      ~{true="--skip-invalid-items" false="" skipSkipInvalidItems} \
      ~{true="--disable-vr-checker" false="" disableDisableVrChecker} \
      ~{true="--charset-check-all" false="" charsetCharsetCheckAll} \
      ~{true="--no-document-header" false="" noNoDocumentHeader} \
      ~{htmlHtmlFileOut}
  >>>
}