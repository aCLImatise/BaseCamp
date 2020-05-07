version 1.0

task BedopsFloat128 {
  input {
    String chromChrom
    Boolean ecEc
    Boolean headerHeader
    Boolean helpHelp
    String rangeRange
    String rangeRange
  }
  command <<<
    bedops-float128 \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="--ec" false="" ecEc} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--help-" false="" helpHelp} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""}
  >>>
}