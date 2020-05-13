version 1.0

task MakeOtuHeatmap.py {
  input {
    String otuOtuTableFp
    String outputOutputFp
  }
  command <<<
    make_otu_heatmap.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}