version 1.0

task FilterOtusFromOtuTable.py {
  input {
    String inputInputFp
    String outputOutputFp
  }
  command <<<
    filter_otus_from_otu_table.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}