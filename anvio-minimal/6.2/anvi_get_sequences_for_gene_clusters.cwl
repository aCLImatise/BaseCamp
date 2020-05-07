class: CommandLineTool
id: anvi_get_sequences_for_gene_clusters.cwl
inputs:
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: output_file
  doc: File path to store results.
  type: string
  inputBinding:
    prefix: --output-file
- id: report_dna_sequences
  doc: By default, this program reports amino acid sequences. Use this flag to report
    DNA sequences instead.
  type: boolean
  inputBinding:
    prefix: --report-DNA-sequences
- id: gene_cluster_id
  doc: Gene cluster ID you are interested in.
  type: string
  inputBinding:
    prefix: --gene-cluster-id
- id: gene_cluster_ids_file
  doc: Text file for gene clusters (each line should contain be a unique gene cluster
    id).
  type: File
  inputBinding:
    prefix: --gene-cluster-ids-file
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: min_num_genomes_gene_cluster_occurs
  doc: This filter will remove gene clusters from your report. Let's assume you have
    100 genomes in your pan genome analysis. You can use this parameter if you want
    to work only with gene clusters that occur in at least X number of genomes. If
    you say '--min-num- genomes-gene-cluster-occurs 90', each gene cluster in the
    analysis will be required at least to appear in 90 genomes. If a gene occurs in
    less than that number of genomes, it simply will not be reported. This is especially
    useful for phylogenomic analyses, where you may want to only focus on gene clusters
    that are prevalent across the set of genomes you wish to analyze.
  type: long
  inputBinding:
    prefix: --min-num-genomes-gene-cluster-occurs
- id: max_num_genomes_gene_cluster_occurs
  doc: This filter will remove gene clusters from your report. Let's assume you have
    100 genomes in your pan genome analysis. You can use this parameter if you want
    to work only with gene clusters that occur in at most X number of genomes. If
    you say '--max-num- genomes-gene-cluster-occurs 1', you will get gene clusters
    that are singletons. Combining this parameter with --min-num-genomes-gene-cluster-occurs
    can give you a very precise way to filter your gene clusters.
  type: long
  inputBinding:
    prefix: --max-num-genomes-gene-cluster-occurs
- id: min_num_genes_from_each_genome
  doc: This filter will remove gene clusters from your report. If you say '--min-num-genes-from-each-genome
    2', this filter will remove every gene cluster, to which every genome in your
    analysis contributed less than 2 genes. This can be useful to find out gene clusters
    with many genes from many genomes (such as conserved multi-copy genes within a
    clade).
  type: long
  inputBinding:
    prefix: --min-num-genes-from-each-genome
- id: max_num_genes_from_each_genome
  doc: This filter will remove gene clusters from your report. If you say '--max-num-genes-from-each-genome
    1', every gene cluster that has more than one gene from any genome that contributes
    to it will be removed from your analysis. This could be useful to remove gene
    clusters with paralogs from your report for appropriate phylogenomic analyses.
    For instance, using '--max-num-genes-from-each-genome 1' and 'min-num- genomes-gene-cluster-occurs
    X' where X is the total number of your genomes, would give you the single-copy
    gene clusters in your pan genome.
  type: long
  inputBinding:
    prefix: --max-num-genes-from-each-genome
- id: max_num_gene_clusters_missing_from_genome
  doc: This filter will remove genomes from your report. If you have a list of gene
    cluster names, you can use this parameter to omit any genome from your report
    if it is missing more than a number of genes you desire. For instance, if you
    have 100 genomes in your pan genome, and you are interested in working only with
    genomes that have all 5 specific gene clusters of your choice, you can use '--max-num-gene-clusters-missing-
    from-genome 4' to remove remove the bins that are missing more than 4 of those
    5 genes. This is especially useful for phylogenomic analyses. Parameter 0 will
    remove any genome that is missing any of the genes.
  type: long
  inputBinding:
    prefix: --max-num-gene-clusters-missing-from-genome
- id: min_functional_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--min-functional-homogeneity-index
    0.3', every gene cluster with a functional homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved in resulting function
  type: double
  inputBinding:
    prefix: --min-functional-homogeneity-index
- id: max_functional_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--max-functional-homogeneity-index
    0.5', every gene cluster with a functional homogeneity index greater than 0.5
    will be removed from your analysis. This can be useful if you only want to look
    at gene clusters that don't seem to be functionally conserved
  type: double
  inputBinding:
    prefix: --max-functional-homogeneity-index
- id: min_geometric_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--min-geometric-homogeneity-index
    0.3', every gene cluster with a geometric homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved in geometric configuration
  type: double
  inputBinding:
    prefix: --min-geometric-homogeneity-index
- id: max_geometric_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--max-geometric-homogeneity-index
    0.5', every gene cluster with a geometric homogeneity index greater than 0.5 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that have many not be as conserved as others
  type: double
  inputBinding:
    prefix: --max-geometric-homogeneity-index
- id: min_combined_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--min-combined-homogeneity-index
    0.3', every gene cluster with a combined homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved overall
  type: double
  inputBinding:
    prefix: --min-combined-homogeneity-index
- id: max_combined_homogeneity_index
  doc: This filter will remove gene clusters from your report. If you say '--max-combined-homogeneity-index
    0.5', every gene cluster with a combined homogeneity index greater than 0.5 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that have many not be as conserved overall as others
  type: double
  inputBinding:
    prefix: --max-combined-homogeneity-index
- id: add_into_items_additional_data_table
  doc: If you use any of the filters, and would like to add the resulting item names
    into the items additional data table of your database, you can use this parameter.
    You will need to give a name for these results to be saved. If the given name
    is already in the items additional data table, its contents will be replaced with
    the new one. Then you can run anvi- interactive or anvi-display-pan to 'see' the
    results of your filters.
  type: string
  inputBinding:
    prefix: --add-into-items-additional-data-table
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: list_bins
  doc: List available bins in a collection and exit.
  type: boolean
  inputBinding:
    prefix: --list-bins
- id: concatenate_gene_clusters
  doc: Concatenate output gene clusters in the same order to create a multi-gene alignment
    output that is suitable for phylogenomic analyses.
  type: boolean
  inputBinding:
    prefix: --concatenate-gene-clusters
- id: partition_file
  doc: "Some commonly used software for phylogenetic analyses (e.g., IQ-TREE, RAxML,\
    \ etc) allow users to specify/test different substitution models for each gene\
    \ of a concatenated multiple sequence alignments. For this, they use a special\
    \ file format called a 'partition file', which indicates the site for each gene\
    \ in the alignment. You can use this parameter to declare an output path for anvi'o\
    \ to report a NEXUS format partition file in addition to your FASTA output (requested\
    \ by Massimiliano Molari in #1333)."
  type: File
  inputBinding:
    prefix: --partition-file
- id: separator
  doc: Characters to separate things (the default is whatever is most suitable).
  type: string
  inputBinding:
    prefix: --separator
- id: align_with
  doc: The multiple sequence alignment program to use when multiple sequence alignment
    is necessary. To see all available options, use the flag `--list-aligners`.
  type: string
  inputBinding:
    prefix: --align-with
- id: list_aligners
  doc: Show available software for multiple sequence alignment.
  type: boolean
  inputBinding:
    prefix: --list-aligners
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: dry_run
  doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-get-sequences-for-gene-clusters
