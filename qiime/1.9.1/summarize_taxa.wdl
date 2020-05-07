version 1.0

task SummarizeTaxa.py {
  input {
    String otuOtuTableFp
  }
  command <<<
    summarize_taxa.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""}
  >>>
}