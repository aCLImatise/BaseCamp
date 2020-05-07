version 1.0

task CalculateRefAltCounts {
  input {
    File outputOutput
    Array[File]+ inputInput
    String bB
    File referenceReference
    String eventEventSize
    String bufferBuffer
  }
  command <<<
    calculate_ref_alt_counts \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(eventEventSize) then ("--event_size " +  '"' + eventEventSize + '"') else ""} \
      ~{if defined(bufferBuffer) then ("--buffer " +  '"' + bufferBuffer + '"') else ""}
  >>>
}