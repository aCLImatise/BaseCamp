version 1.0

task MtsvChunkFLAGS {
  input {
    String inputInput
    String outputOutput
    Int gbGb
  }
  command <<<
    mtsv-chunk FLAGS \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(gbGb) then ("--gb " +  '"' + gbGb + '"') else ""}
  >>>
}