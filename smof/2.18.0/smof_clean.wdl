version 1.0

task SmofClean {
  input {
    String tT
    Boolean toToUpper
    Boolean toToLower
    Boolean toToSeq
    Boolean reduceReduceHeader
    Boolean maskMaskIrregular
    Boolean maskMaskLowercase
    String colColWidth
    Boolean standardizeStandardize
    String? inputInput
  }
  command <<<
    smof clean \
      ~{inputInput} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--toupper" false="" toToUpper} \
      ~{true="--tolower" false="" toToLower} \
      ~{true="--toseq" false="" toToSeq} \
      ~{true="--reduce-header" false="" reduceReduceHeader} \
      ~{true="--mask-irregular" false="" maskMaskIrregular} \
      ~{true="--mask-lowercase" false="" maskMaskLowercase} \
      ~{if defined(colColWidth) then ("--col_width " +  '"' + colColWidth + '"') else ""} \
      ~{true="--standardize" false="" standardizeStandardize}
  >>>
}