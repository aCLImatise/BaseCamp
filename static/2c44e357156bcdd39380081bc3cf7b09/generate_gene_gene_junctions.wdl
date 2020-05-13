version 1.0

task GenerateGeneGeneJunctions.py {
  input {
    String inputInput
    String inputInputDatabase
    String inputInputExons
    String outputOutput
    String outputOutputGenes
    String outputOutputDir
    String outputOutputTopHatJunCs
    String longestLongest
    Boolean reverseReverse
    String outputOutputGenesCountNuc
    String outputOutputGenesCountSeq
    String paddingPadding
  }
  command <<<
    generate_gene-gene_junctions.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputDatabase) then ("--input_database " +  '"' + inputInputDatabase + '"') else ""} \
      ~{if defined(inputInputExons) then ("--input_exons " +  '"' + inputInputExons + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputGenes) then ("--output_genes " +  '"' + outputOutputGenes + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputTopHatJunCs) then ("--output_tophat_juncs " +  '"' + outputOutputTopHatJunCs + '"') else ""} \
      ~{if defined(longestLongest) then ("--longest " +  '"' + longestLongest + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(outputOutputGenesCountNuc) then ("--output_genes_count_nuc " +  '"' + outputOutputGenesCountNuc + '"') else ""} \
      ~{if defined(outputOutputGenesCountSeq) then ("--output_genes_count_seq " +  '"' + outputOutputGenesCountSeq + '"') else ""} \
      ~{if defined(paddingPadding) then ("--padding " +  '"' + paddingPadding + '"') else ""}
  >>>
}