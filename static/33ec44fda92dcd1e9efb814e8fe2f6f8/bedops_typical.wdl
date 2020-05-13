version 1.0

task BedopsTypical {
  input {
    String chromChrom
    Boolean ecEc
    Boolean headerHeader
    Boolean helpHelp
    String rangeRange
    String rangeRange
  }
  command <<<
    bedops-typical \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="--ec" false="" ecEc} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--help-" false="" helpHelp} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""}
  >>>
}