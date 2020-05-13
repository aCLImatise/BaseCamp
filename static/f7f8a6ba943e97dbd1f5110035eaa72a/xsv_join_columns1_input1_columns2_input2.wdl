version 1.0

task XsvJoinColumns1Input1Columns2Input2 {
  input {
    Boolean noNoCase
    Boolean leftLeft
    Boolean rightRight
    Boolean fullFull
    Boolean crossCross
    Boolean nullsNulls
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
  }
  command <<<
    xsv join columns1 input1 columns2 input2 \
      ~{true="--no-case" false="" noNoCase} \
      ~{true="--left" false="" leftLeft} \
      ~{true="--right" false="" rightRight} \
      ~{true="--full" false="" fullFull} \
      ~{true="--cross" false="" crossCross} \
      ~{true="--nulls" false="" nullsNulls} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}