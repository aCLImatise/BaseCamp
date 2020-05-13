version 1.0

task ExtractShortReads.py {
  input {
    String inputInput
    String listList
    String outputOutput
    Boolean mateMate
    String bufferBufferSize
  }
  command <<<
    extract_short_reads.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--mate" false="" mateMate} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""}
  >>>
}