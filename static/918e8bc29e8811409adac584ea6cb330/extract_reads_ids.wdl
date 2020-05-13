version 1.0

task ExtractReadsIds.py {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    extract_reads_ids.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}