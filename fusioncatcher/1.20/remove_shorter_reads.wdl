version 1.0

task RemoveShorterReads.py {
  input {
    String inputInput
    String outputOutput
    String thresholdThreshold
  }
  command <<<
    remove_shorter_reads.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}