version 1.0

task Split {
  input {
    String suffixSuffixLength
    String additionalAdditionalSuffix
    Int bytesBytes
    Int lineLineBytes
    Boolean dD
    Boolean numericNumericSuffixes
    Boolean elideElideEmptyFiles
    String filterFilter
    String linesLines
    String numberNumber
    String separatorSeparator
    Boolean unbufferedUnbuffered
    Boolean verboseVerbose
  }
  command <<<
    split \
      ~{if defined(suffixSuffixLength) then ("--suffix-length " +  '"' + suffixSuffixLength + '"') else ""} \
      ~{if defined(additionalAdditionalSuffix) then ("--additional-suffix " +  '"' + additionalAdditionalSuffix + '"') else ""} \
      ~{if defined(bytesBytes) then ("--bytes " +  '"' + bytesBytes + '"') else ""} \
      ~{if defined(lineLineBytes) then ("--line-bytes " +  '"' + lineLineBytes + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="--numeric-suffixes" false="" numericNumericSuffixes} \
      ~{true="--elide-empty-files" false="" elideElideEmptyFiles} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(linesLines) then ("--lines " +  '"' + linesLines + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--unbuffered" false="" unbufferedUnbuffered} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}