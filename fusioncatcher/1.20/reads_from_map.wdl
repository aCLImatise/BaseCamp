version 1.0

task ReadsFromMap.py {
  input {
    String inputInputReads
    String inputInputMap
    String outputOutputMap
    String operationOperation
  }
  command <<<
    reads_from_map.py \
      ~{if defined(inputInputReads) then ("--input_reads " +  '"' + inputInputReads + '"') else ""} \
      ~{if defined(inputInputMap) then ("--input_map " +  '"' + inputInputMap + '"') else ""} \
      ~{if defined(outputOutputMap) then ("--output_map " +  '"' + outputOutputMap + '"') else ""} \
      ~{if defined(operationOperation) then ("--operation " +  '"' + operationOperation + '"') else ""}
  >>>
}