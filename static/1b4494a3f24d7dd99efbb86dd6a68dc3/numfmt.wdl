version 1.0

task Numfmt {
  input {
    Boolean debugDebug
    String delimiterDelimiter
    String fieldField
    String formatFormat
    String fromFrom
    String fromFromUnit
    Boolean groupingGrouping
    Boolean headerHeader
    String invalidInvalid
    String paddingPadding
    String roundRound
    String suffixSuffix
    String toTo
    String toToUnit
    Boolean zeroZeroTerminated
    String? noneNone
    String? autoAuto
    String? siSi
    String? iecIec
    String? iecIecI
  }
  command <<<
    numfmt \
      ~{noneNone} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(fromFromUnit) then ("--from-unit " +  '"' + fromFromUnit + '"') else ""} \
      ~{true="--grouping" false="" groupingGrouping} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(invalidInvalid) then ("--invalid " +  '"' + invalidInvalid + '"') else ""} \
      ~{if defined(paddingPadding) then ("--padding " +  '"' + paddingPadding + '"') else ""} \
      ~{if defined(roundRound) then ("--round " +  '"' + roundRound + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""} \
      ~{if defined(toToUnit) then ("--to-unit " +  '"' + toToUnit + '"') else ""} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated} \
      ~{autoAuto} \
      ~{siSi} \
      ~{iecIec} \
      ~{iecIecI}
  >>>
}