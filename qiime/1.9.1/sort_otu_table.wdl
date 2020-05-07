version 1.0

task SortOtuTable.py {
  input {
    String inputInputOtuTable
    String outputOutputFp
  }
  command <<<
    sort_otu_table.py \
      ~{if defined(inputInputOtuTable) then ("--input_otu_table " +  '"' + inputInputOtuTable + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}