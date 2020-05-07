version 1.0

task FilterTaxaFromOtuTable.py {
  input {
    String inputInputOtuTableFp
    String outputOutputOtuTableFp
  }
  command <<<
    filter_taxa_from_otu_table.py \
      ~{if defined(inputInputOtuTableFp) then ("--input_otu_table_fp " +  '"' + inputInputOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputOtuTableFp) then ("--output_otu_table_fp " +  '"' + outputOutputOtuTableFp + '"') else ""}
  >>>
}