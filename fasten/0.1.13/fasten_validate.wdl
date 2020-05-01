version 1.0

task FastenValidate {
  input {
    Int nN
    Boolean pP
    Boolean vV
    Int minMinLength
    Float minMinQuality
    Boolean pairedPairedEnd
    Boolean printPrintReads
    Boolean vV
  }
  command <<<
    fasten_validate \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinQuality) then ("--min-quality " +  '"' + minMinQuality + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--print-reads" false="" printPrintReads} \
      ~{true="-v" false="" vV}
  >>>
}