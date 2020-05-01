version 1.0

task OTrim {
  input {
    Int trimTrimFrom
    Int trimTrimTo
    Int minMinLength
    File outputOutput
    File? fileFile
  }
  command <<<
    o-trim \
      ~{fileFile} \
      ~{if defined(trimTrimFrom) then ("--trim-from " +  '"' + trimTrimFrom + '"') else ""} \
      ~{if defined(trimTrimTo) then ("--trim-to " +  '"' + trimTrimTo + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}