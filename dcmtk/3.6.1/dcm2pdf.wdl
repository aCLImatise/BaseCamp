version 1.0

task Dcm2pdf {
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
    Boolean disableDisableCp246
    Boolean disableDisableCorrection
    Boolean xX
    String? dcmDcmFileIn
    String? pdfPdfFileOut
  }
  command <<<
    dcm2pdf \
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
      ~{true="--disable-cp246" false="" disableDisableCp246} \
      ~{true="--disable-correction" false="" disableDisableCorrection} \
      ~{true="-x" false="" xX} \
      ~{pdfPdfFileOut}
  >>>
}