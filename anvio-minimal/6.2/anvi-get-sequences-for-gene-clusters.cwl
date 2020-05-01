#!/usr/bin/env cwl-runner

baseCommand:
- anvi-get-sequences-for-gene-clusters
class: CommandLineTool
cwlVersion: v1.0
id: anvi-get-sequences-for-gene-clusters
inputs:
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: By default, this program reports amino acid sequences. Use this flag to report
    DNA sequences instead.
  id: report_dna_sequences
  inputBinding:
    prefix: --report-DNA-sequences
  type: boolean
- doc: Gene cluster ID you are interested in.
  id: gene_cluster_id
  inputBinding:
    prefix: --gene-cluster-id
  type: string
- doc: Text file for gene clusters (each line should contain be a unique gene cluster
    id).
  id: gene_cluster_ids_file
  inputBinding:
    prefix: --gene-cluster-ids-file
  type: File
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Bin name you are interested in.
  id: bin_id
  inputBinding:
    prefix: --bin-id
  type: string
- doc: This filter will remove gene clusters from your report. Let's assume you have
    100 genomes in your pan genome analysis. You can use this parameter if you want
    to work only with gene clusters that occur in at least X number of genomes. If
    you say '--min-num- genomes-gene-cluster-occurs 90', each gene cluster in the
    analysis will be required at least to appear in 90 genomes. If a gene occurs in
    less than that number of genomes, it simply will not be reported. This is especially
    useful for phylogenomic analyses, where you may want to only focus on gene clusters
    that are prevalent across the set of genomes you wish to analyze.
  id: min_num_genomes_gene_cluster_occurs
  inputBinding:
    prefix: --min-num-genomes-gene-cluster-occurs
  type: long
- doc: This filter will remove gene clusters from your report. Let's assume you have
    100 genomes in your pan genome analysis. You can use this parameter if you want
    to work only with gene clusters that occur in at most X number of genomes. If
    you say '--max-num- genomes-gene-cluster-occurs 1', you will get gene clusters
    that are singletons. Combining this parameter with --min-num-genomes-gene-cluster-occurs
    can give you a very precise way to filter your gene clusters.
  id: max_num_genomes_gene_cluster_occurs
  inputBinding:
    prefix: --max-num-genomes-gene-cluster-occurs
  type: long
- doc: This filter will remove gene clusters from your report. If you say '--min-num-genes-from-each-genome
    2', this filter will remove every gene cluster, to which every genome in your
    analysis contributed less than 2 genes. This can be useful to find out gene clusters
    with many genes from many genomes (such as conserved multi-copy genes within a
    clade).
  id: min_num_genes_from_each_genome
  inputBinding:
    prefix: --min-num-genes-from-each-genome
  type: long
- doc: This filter will remove gene clusters from your report. If you say '--max-num-genes-from-each-genome
    1', every gene cluster that has more than one gene from any genome that contributes
    to it will be removed from your analysis. This could be useful to remove gene
    clusters with paralogs from your report for appropriate phylogenomic analyses.
    For instance, using '--max-num-genes-from-each-genome 1' and 'min-num- genomes-gene-cluster-occurs
    X' where X is the total number of your genomes, would give you the single-copy
    gene clusters in your pan genome.
  id: max_num_genes_from_each_genome
  inputBinding:
    prefix: --max-num-genes-from-each-genome
  type: long
- doc: This filter will remove genomes from your report. If you have a list of gene
    cluster names, you can use this parameter to omit any genome from your report
    if it is missing more than a number of genes you desire. For instance, if you
    have 100 genomes in your pan genome, and you are interested in working only with
    genomes that have all 5 specific gene clusters of your choice, you can use '--max-num-gene-clusters-missing-
    from-genome 4' to remove remove the bins that are missing more than 4 of those
    5 genes. This is especially useful for phylogenomic analyses. Parameter 0 will
    remove any genome that is missing any of the genes.
  id: max_num_gene_clusters_missing_from_genome
  inputBinding:
    prefix: --max-num-gene-clusters-missing-from-genome
  type: long
- doc: This filter will remove gene clusters from your report. If you say '--min-functional-homogeneity-index
    0.3', every gene cluster with a functional homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved in resulting function
  id: min_functional_homogeneity_index
  inputBinding:
    prefix: --min-functional-homogeneity-index
  type: double
- doc: This filter will remove gene clusters from your report. If you say '--max-functional-homogeneity-index
    0.5', every gene cluster with a functional homogeneity index greater than 0.5
    will be removed from your analysis. This can be useful if you only want to look
    at gene clusters that don't seem to be functionally conserved
  id: max_functional_homogeneity_index
  inputBinding:
    prefix: --max-functional-homogeneity-index
  type: double
- doc: This filter will remove gene clusters from your report. If you say '--min-geometric-homogeneity-index
    0.3', every gene cluster with a geometric homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved in geometric configuration
  id: min_geometric_homogeneity_index
  inputBinding:
    prefix: --min-geometric-homogeneity-index
  type: double
- doc: This filter will remove gene clusters from your report. If you say '--max-geometric-homogeneity-index
    0.5', every gene cluster with a geometric homogeneity index greater than 0.5 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that have many not be as conserved as others
  id: max_geometric_homogeneity_index
  inputBinding:
    prefix: --max-geometric-homogeneity-index
  type: double
- doc: This filter will remove gene clusters from your report. If you say '--min-combined-homogeneity-index
    0.3', every gene cluster with a combined homogeneity index less than 0.3 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that are highly conserved overall
  id: min_combined_homogeneity_index
  inputBinding:
    prefix: --min-combined-homogeneity-index
  type: double
- doc: This filter will remove gene clusters from your report. If you say '--max-combined-homogeneity-index
    0.5', every gene cluster with a combined homogeneity index greater than 0.5 will
    be removed from your analysis. This can be useful if you only want to look at
    gene clusters that have many not be as conserved overall as others
  id: max_combined_homogeneity_index
  inputBinding:
    prefix: --max-combined-homogeneity-index
  type: double
- doc: If you use any of the filters, and would like to add the resulting item names
    into the items additional data table of your database, you can use this parameter.
    You will need to give a name for these results to be saved. If the given name
    is already in the items additional data table, its contents will be replaced with
    the new one. Then you can run anvi- interactive or anvi-display-pan to 'see' the
    results of your filters.
  id: add_into_items_additional_data_table
  inputBinding:
    prefix: --add-into-items-additional-data-table
  type: string
- doc: Show available collections and exit.
  id: list_collections
  inputBinding:
    prefix: --list-collections
  type: boolean
- doc: List available bins in a collection and exit.
  id: list_bins
  inputBinding:
    prefix: --list-bins
  type: boolean
- doc: Concatenate output gene clusters in the same order to create a multi-gene alignment
    output that is suitable for phylogenomic analyses.
  id: concatenate_gene_clusters
  inputBinding:
    prefix: --concatenate-gene-clusters
  type: boolean
- doc: "Some commonly used software for phylogenetic analyses (e.g., IQ-TREE, RAxML,\
    \ etc) allow users to specify/test different substitution models for each gene\
    \ of a concatenated multiple sequence alignments. For this, they use a special\
    \ file format called a 'partition file', which indicates the site for each gene\
    \ in the alignment. You can use this parameter to declare an output path for anvi'o\
    \ to report a NEXUS format partition file in addition to your FASTA output (requested\
    \ by Massimiliano Molari in #1333)."
  id: partition_file
  inputBinding:
    prefix: --partition-file
  type: File
- doc: Characters to separate things (the default is whatever is most suitable).
  id: separator
  inputBinding:
    prefix: --separator
  type: string
- doc: The multiple sequence alignment program to use when multiple sequence alignment
    is necessary. To see all available options, use the flag `--list-aligners`.
  id: align_with
  inputBinding:
    prefix: --align-with
  type: string
- doc: Show available software for multiple sequence alignment.
  id: list_aligners
  inputBinding:
    prefix: --list-aligners
  type: boolean
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
- doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
