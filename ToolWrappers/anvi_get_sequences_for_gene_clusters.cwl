class: CommandLineTool
id: anvi_get_sequences_for_gene_clusters.cwl
inputs:
- id: in_pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File
  inputBinding:
    prefix: --genomes-storage
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_report_dna_sequences
  doc: "By default, this program reports amino acid sequences.\nUse this flag to report\
    \ DNA sequences instead."
  type: boolean
  inputBinding:
    prefix: --report-DNA-sequences
- id: in_gene_cluster_id
  doc: Gene cluster ID you are interested in.
  type: string
  inputBinding:
    prefix: --gene-cluster-id
- id: in_gene_cluster_ids_file
  doc: "Text file for gene clusters (each line should contain\nbe a unique gene cluster\
    \ id)."
  type: File
  inputBinding:
    prefix: --gene-cluster-ids-file
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_min_num_genomes_gene_cluster_occurs
  doc: "This filter will remove gene clusters from your\nreport. Let's assume you\
    \ have 100 genomes in your pan\ngenome analysis. You can use this parameter if\
    \ you\nwant to work only with gene clusters that occur in at\nleast X number of\
    \ genomes. If you say '--min-num-\ngenomes-gene-cluster-occurs 90', each gene\
    \ cluster in\nthe analysis will be required at least to appear in 90\ngenomes.\
    \ If a gene occurs in less than that number of\ngenomes, it simply will not be\
    \ reported. This is\nespecially useful for phylogenomic analyses, where you\n\
    may want to only focus on gene clusters that are\nprevalent across the set of\
    \ genomes you wish to\nanalyze."
  type: long
  inputBinding:
    prefix: --min-num-genomes-gene-cluster-occurs
- id: in_max_num_genomes_gene_cluster_occurs
  doc: "This filter will remove gene clusters from your\nreport. Let's assume you\
    \ have 100 genomes in your pan\ngenome analysis. You can use this parameter if\
    \ you\nwant to work only with gene clusters that occur in at\nmost X number of\
    \ genomes. If you say '--max-num-\ngenomes-gene-cluster-occurs 1', you will get\
    \ gene\nclusters that are singletons. Combining this parameter\nwith --min-num-genomes-gene-cluster-occurs\
    \ can give\nyou a very precise way to filter your gene clusters."
  type: long
  inputBinding:
    prefix: --max-num-genomes-gene-cluster-occurs
- id: in_min_num_genes_from_each_genome
  doc: "This filter will remove gene clusters from your\nreport. If you say '--min-num-genes-from-each-genome\n\
    2', this filter will remove every gene cluster, to\nwhich every genome in your\
    \ analysis contributed less\nthan 2 genes. This can be useful to find out gene\n\
    clusters with many genes from many genomes (such as\nconserved multi-copy genes\
    \ within a clade)."
  type: long
  inputBinding:
    prefix: --min-num-genes-from-each-genome
- id: in_max_num_genes_from_each_genome
  doc: "This filter will remove gene clusters from your\nreport. If you say '--max-num-genes-from-each-genome\n\
    1', every gene cluster that has more than one gene\nfrom any genome that contributes\
    \ to it will be removed\nfrom your analysis. This could be useful to remove\n\
    gene clusters with paralogs from your report for\nappropriate phylogenomic analyses.\
    \ For instance, using\n'--max-num-genes-from-each-genome 1' and 'min-num-\ngenomes-gene-cluster-occurs\
    \ X' where X is the total\nnumber of your genomes, would give you the single-copy\n\
    gene clusters in your pan genome."
  type: long
  inputBinding:
    prefix: --max-num-genes-from-each-genome
- id: in_max_num_gene_clusters_missing_from_genome
  doc: "This filter will remove genomes from your report. If\nyou have a list of gene\
    \ cluster names, you can use\nthis parameter to omit any genome from your report\
    \ if\nit is missing more than a number of genes you desire.\nFor instance, if\
    \ you have 100 genomes in your pan\ngenome, and you are interested in working\
    \ only with\ngenomes that have all 5 specific gene clusters of your\nchoice, you\
    \ can use '--max-num-gene-clusters-missing-\nfrom-genome 4' to remove remove the\
    \ bins that are\nmissing more than 4 of those 5 genes. This is\nespecially useful\
    \ for phylogenomic analyses. Parameter\n0 will remove any genome that is missing\
    \ any of the\ngenes."
  type: long
  inputBinding:
    prefix: --max-num-gene-clusters-missing-from-genome
- id: in_min_functional_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--min-functional-homogeneity-index\n\
    0.3', every gene cluster with a functional homogeneity\nindex less than 0.3 will\
    \ be removed from your\nanalysis. This can be useful if you only want to look\n\
    at gene clusters that are highly conserved in\nresulting function"
  type: double
  inputBinding:
    prefix: --min-functional-homogeneity-index
- id: in_max_functional_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--max-functional-homogeneity-index\n\
    0.5', every gene cluster with a functional homogeneity\nindex greater than 0.5\
    \ will be removed from your\nanalysis. This can be useful if you only want to\
    \ look\nat gene clusters that don't seem to be functionally\nconserved"
  type: double
  inputBinding:
    prefix: --max-functional-homogeneity-index
- id: in_min_geometric_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--min-geometric-homogeneity-index\n\
    0.3', every gene cluster with a geometric homogeneity\nindex less than 0.3 will\
    \ be removed from your\nanalysis. This can be useful if you only want to look\n\
    at gene clusters that are highly conserved in\ngeometric configuration"
  type: double
  inputBinding:
    prefix: --min-geometric-homogeneity-index
- id: in_max_geometric_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--max-geometric-homogeneity-index\n\
    0.5', every gene cluster with a geometric homogeneity\nindex greater than 0.5\
    \ will be removed from your\nanalysis. This can be useful if you only want to\
    \ look\nat gene clusters that have many not be as conserved as\nothers"
  type: double
  inputBinding:
    prefix: --max-geometric-homogeneity-index
- id: in_min_combined_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--min-combined-homogeneity-index\n\
    0.3', every gene cluster with a combined homogeneity\nindex less than 0.3 will\
    \ be removed from your\nanalysis. This can be useful if you only want to look\n\
    at gene clusters that are highly conserved overall"
  type: double
  inputBinding:
    prefix: --min-combined-homogeneity-index
- id: in_max_combined_homogeneity_index
  doc: "This filter will remove gene clusters from your\nreport. If you say '--max-combined-homogeneity-index\n\
    0.5', every gene cluster with a combined homogeneity\nindex greater than 0.5 will\
    \ be removed from your\nanalysis. This can be useful if you only want to look\n\
    at gene clusters that have many not be as conserved\noverall as others"
  type: double
  inputBinding:
    prefix: --max-combined-homogeneity-index
- id: in_add_into_items_additional_data_table
  doc: "If you use any of the filters, and would like to add\nthe resulting item names\
    \ into the items additional\ndata table of your database, you can use this\nparameter.\
    \ You will need to give a name for these\nresults to be saved. If the given name\
    \ is already in\nthe items additional data table, its contents will be\nreplaced\
    \ with the new one. Then you can run anvi-\ninteractive or anvi-display-pan to\
    \ 'see' the results\nof your filters."
  type: string
  inputBinding:
    prefix: --add-into-items-additional-data-table
- id: in_list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: in_list_bins
  doc: List available bins in a collection and exit.
  type: boolean
  inputBinding:
    prefix: --list-bins
- id: in_concatenate_gene_clusters
  doc: "Concatenate output gene clusters in the same order to\ncreate a multi-gene\
    \ alignment output that is suitable\nfor phylogenomic analyses."
  type: boolean
  inputBinding:
    prefix: --concatenate-gene-clusters
- id: in_partition_file
  doc: "Some commonly used software for phylogenetic analyses\n(e.g., IQ-TREE, RAxML,\
    \ etc) allow users to\nspecify/test different substitution models for each\ngene\
    \ of a concatenated multiple sequence alignments.\nFor this, they use a special\
    \ file format called a\n'partition file', which indicates the site for each\n\
    gene in the alignment. You can use this parameter to\ndeclare an output path for\
    \ anvi'o to report a NEXUS\nformat partition file in addition to your FASTA output\n\
    (requested by Massimiliano Molari in #1333)."
  type: File
  inputBinding:
    prefix: --partition-file
- id: in_separator
  doc: "Characters to separate things (the default is whatever\nis most suitable)."
  type: string
  inputBinding:
    prefix: --separator
- id: in_align_with
  doc: "The multiple sequence alignment program to use when\nmultiple sequence alignment\
    \ is necessary. To see all\navailable options, use the flag `--list-aligners`."
  type: string
  inputBinding:
    prefix: --align-with
- id: in_list_aligners
  doc: Show available software for multiple sequence
  type: boolean
  inputBinding:
    prefix: --list-aligners
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: in_alignment_dot
  doc: 'LIFE SAVERS:'
  type: string
  inputBinding:
    position: 0
- id: in_it_dot
  doc: --dry-run             Don't do anything real. Test everything, and stop
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_partition_file
  doc: "Some commonly used software for phylogenetic analyses\n(e.g., IQ-TREE, RAxML,\
    \ etc) allow users to\nspecify/test different substitution models for each\ngene\
    \ of a concatenated multiple sequence alignments.\nFor this, they use a special\
    \ file format called a\n'partition file', which indicates the site for each\n\
    gene in the alignment. You can use this parameter to\ndeclare an output path for\
    \ anvi'o to report a NEXUS\nformat partition file in addition to your FASTA output\n\
    (requested by Massimiliano Molari in #1333)."
  type: File
  outputBinding:
    glob: $(inputs.in_partition_file)
cwlVersion: v1.1
baseCommand:
- anvi-get-sequences-for-gene-clusters
