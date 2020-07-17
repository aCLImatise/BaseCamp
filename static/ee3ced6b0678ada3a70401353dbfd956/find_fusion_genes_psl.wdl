version 1.0

task FindFusionGenesPsl.py {
  input {
    String? input_mappings
    String? input_genes_positions
    String? input_gene_gene_fast_a
    String? input_hugo
    String? threshold_matches
    String? mismatches
    String? threshold_overlap
    String? separator
    String? text_file_containg
  }
  command <<<
    find_fusion_genes_psl.py \
      ~{if defined(input_mappings) then ("--input_mappings " +  '"' + input_mappings + '"') else ""} \
      ~{if defined(input_genes_positions) then ("--input_genes_positions " +  '"' + input_genes_positions + '"') else ""} \
      ~{if defined(input_gene_gene_fast_a) then ("--input_genegene_fasta " +  '"' + input_gene_gene_fast_a + '"') else ""} \
      ~{if defined(input_hugo) then ("--input_hugo " +  '"' + input_hugo + '"') else ""} \
      ~{if defined(threshold_matches) then ("--threshold_matches " +  '"' + threshold_matches + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(threshold_overlap) then ("--threshold_overlap " +  '"' + threshold_overlap + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(text_file_containg) then ("--output " +  '"' + text_file_containg + '"') else ""}
  >>>
  parameter_meta {
    input_mappings: "The input file in PSL format containing the reads/contigs uniquely mapped on fusion genes."
    input_genes_positions: "A database containing the genes positions on the genome, e.g. 'ensembl/genes_positions_ensembl.txt'."
    input_gene_gene_fast_a: "A FAST file containing the sequences of the gene-gene combinations used for finding fusion genes, e.g. 'gene-gene.fa'."
    input_hugo: "The input database used for linking ENSEMBL GENE ID to HUGO gene names, e.g. 'genes_info_ensembl.txt'."
    threshold_matches: "The threshold for matches above which the contigs which align are taking into consideration. Default is '0.9'."
    mismatches: "All alignments having strictly more mismatches will be removed. Default is '1000'."
    threshold_overlap: "The threshold for the minimum length of the read overlap over the fusion point (i.e. overhang/anchor). Default is '17'."
    separator: "The separator string to be used for marking the breakpoint in the fusion junction."
    text_file_containg: "A text file containg a report regarding new candidate fusion genes."
  }
}