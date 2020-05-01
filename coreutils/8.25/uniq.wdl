version 1.0

task Uniq {
  input {
    Boolean countCount
    Boolean repeatedRepeated
    Boolean dD
    Boolean allAllRepeated
    String skipSkipFields
    Boolean groupGroup
    Boolean ignoreIgnoreCase
    String skipSkipChars
    Boolean uniqueUnique
    Boolean zeroZeroTerminated
    String checkCheckChars
  }
  command <<<
    uniq \
      ~{true="--count" false="" countCount} \
      ~{true="--repeated" false="" repeatedRepeated} \
      ~{true="-D" false="" dD} \
      ~{true="--all-repeated" false="" allAllRepeated} \
      ~{if defined(skipSkipFields) then ("--skip-fields " +  '"' + skipSkipFields + '"') else ""} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{if defined(skipSkipChars) then ("--skip-chars " +  '"' + skipSkipChars + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated} \
      ~{if defined(checkCheckChars) then ("--check-chars " +  '"' + checkCheckChars + '"') else ""}
  >>>
}