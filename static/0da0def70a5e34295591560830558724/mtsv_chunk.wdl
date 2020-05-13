version 1.0

task MtsvChunk {
  input {
    Boolean vV
    String inputInput
    String outputOutput
    Int gbGb
  }
  command <<<
    mtsv-chunk \
      ~{true="-v" false="" vV} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(gbGb) then ("--gb " +  '"' + gbGb + '"') else ""}
  >>>
}