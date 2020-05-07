version 1.0

task MakeOtuTable.py {
  input {
    String otuOtuMapFp
    String outputOutputBiomFp
  }
  command <<<
    make_otu_table.py \
      ~{if defined(otuOtuMapFp) then ("--otu_map_fp " +  '"' + otuOtuMapFp + '"') else ""} \
      ~{if defined(outputOutputBiomFp) then ("--output_biom_fp " +  '"' + outputOutputBiomFp + '"') else ""}
  >>>
}