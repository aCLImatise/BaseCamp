version 1.0

task SummarizeTaxaThroughPlots.py {
  input {
    String otuOtuTableFp
    String outputOutputDir
  }
  command <<<
    summarize_taxa_through_plots.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}