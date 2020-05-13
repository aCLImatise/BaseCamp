version 1.0

task PlotRankAbundanceGraph.py {
  input {
    String otuOtuTableFp
    String sampleSampleName
    String resultResultFp
  }
  command <<<
    plot_rank_abundance_graph.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample_name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(resultResultFp) then ("--result_fp " +  '"' + resultResultFp + '"') else ""}
  >>>
}