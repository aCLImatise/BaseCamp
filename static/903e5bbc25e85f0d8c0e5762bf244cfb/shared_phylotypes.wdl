version 1.0

task SharedPhylotypes.py {
  input {
    String otuOtuTableFp
    String outputOutputFp
  }
  command <<<
    shared_phylotypes.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}