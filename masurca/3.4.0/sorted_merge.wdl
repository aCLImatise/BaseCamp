version 1.0

task SortedMerge {
  input {
    String keyKey
    File outputOutput
    Boolean numericalNumerical
  }
  command <<<
    sorted_merge \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--numerical" false="" numericalNumerical}
  >>>
}