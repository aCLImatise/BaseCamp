version 1.0

task XsvSlice {
  input {
    String startStart
    String endEnd
    String lenLen
    String indexIndex
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv slice \
      ~{inputInput} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(lenLen) then ("--len " +  '"' + lenLen + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}