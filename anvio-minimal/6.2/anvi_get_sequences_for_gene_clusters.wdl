version 1.0

task AnviGetSequencesForGeneClusters {
  input {
    String? pan_db
    String? genomes_storage
    String? output_file
    Boolean? report_dna_sequences
    String? gene_cluster_id
    File? gene_cluster_ids_file
    String? collection_name
    String? bin_id
    Int? min_num_genomes_gene_cluster_occurs
    Int? max_num_genomes_gene_cluster_occurs
    Int? min_num_genes_from_each_genome
    Int? max_num_genes_from_each_genome
    Int? max_num_gene_clusters_missing_from_genome
    Float? min_functional_homogeneity_index
    Float? max_functional_homogeneity_index
    Float? min_geometric_homogeneity_index
    Float? max_geometric_homogeneity_index
    Float? min_combined_homogeneity_index
    Float? max_combined_homogeneity_index
    String? add_into_items_additional_data_table
    Boolean? list_collections
    Boolean? list_bins
    Boolean? concatenate_gene_clusters
    File? partition_file
    String? separator
    String? align_with
    Boolean? list_aligners
    Boolean? just_do_it
    Boolean? dry_run
  }
  command <<<
    anvi-get-sequences-for-gene-clusters \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--report-DNA-sequences" false="" report_dna_sequences} \
      ~{if defined(gene_cluster_id) then ("--gene-cluster-id " +  '"' + gene_cluster_id + '"') else ""} \
      ~{if defined(gene_cluster_ids_file) then ("--gene-cluster-ids-file " +  '"' + gene_cluster_ids_file + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{if defined(min_num_genomes_gene_cluster_occurs) then ("--min-num-genomes-gene-cluster-occurs " +  '"' + min_num_genomes_gene_cluster_occurs + '"') else ""} \
      ~{if defined(max_num_genomes_gene_cluster_occurs) then ("--max-num-genomes-gene-cluster-occurs " +  '"' + max_num_genomes_gene_cluster_occurs + '"') else ""} \
      ~{if defined(min_num_genes_from_each_genome) then ("--min-num-genes-from-each-genome " +  '"' + min_num_genes_from_each_genome + '"') else ""} \
      ~{if defined(max_num_genes_from_each_genome) then ("--max-num-genes-from-each-genome " +  '"' + max_num_genes_from_each_genome + '"') else ""} \
      ~{if defined(max_num_gene_clusters_missing_from_genome) then ("--max-num-gene-clusters-missing-from-genome " +  '"' + max_num_gene_clusters_missing_from_genome + '"') else ""} \
      ~{if defined(min_functional_homogeneity_index) then ("--min-functional-homogeneity-index " +  '"' + min_functional_homogeneity_index + '"') else ""} \
      ~{if defined(max_functional_homogeneity_index) then ("--max-functional-homogeneity-index " +  '"' + max_functional_homogeneity_index + '"') else ""} \
      ~{if defined(min_geometric_homogeneity_index) then ("--min-geometric-homogeneity-index " +  '"' + min_geometric_homogeneity_index + '"') else ""} \
      ~{if defined(max_geometric_homogeneity_index) then ("--max-geometric-homogeneity-index " +  '"' + max_geometric_homogeneity_index + '"') else ""} \
      ~{if defined(min_combined_homogeneity_index) then ("--min-combined-homogeneity-index " +  '"' + min_combined_homogeneity_index + '"') else ""} \
      ~{if defined(max_combined_homogeneity_index) then ("--max-combined-homogeneity-index " +  '"' + max_combined_homogeneity_index + '"') else ""} \
      ~{if defined(add_into_items_additional_data_table) then ("--add-into-items-additional-data-table " +  '"' + add_into_items_additional_data_table + '"') else ""} \
      ~{true="--list-collections" false="" list_collections} \
      ~{true="--list-bins" false="" list_bins} \
      ~{true="--concatenate-gene-clusters" false="" concatenate_gene_clusters} \
      ~{if defined(partition_file) then ("--partition-file " +  '"' + partition_file + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(align_with) then ("--align-with " +  '"' + align_with + '"') else ""} \
      ~{true="--list-aligners" false="" list_aligners} \
      ~{true="--just-do-it" false="" just_do_it} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    output_file: "File path to store results."
    report_dna_sequences: "By default, this program reports amino acid sequences. Use this flag to report DNA sequences instead."
    gene_cluster_id: "Gene cluster ID you are interested in."
    gene_cluster_ids_file: "Text file for gene clusters (each line should contain be a unique gene cluster id)."
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    min_num_genomes_gene_cluster_occurs: "This filter will remove gene clusters from your report. Let's assume you have 100 genomes in your pan genome analysis. You can use this parameter if you want to work only with gene clusters that occur in at least X number of genomes. If you say '--min-num- genomes-gene-cluster-occurs 90', each gene cluster in the analysis will be required at least to appear in 90 genomes. If a gene occurs in less than that number of genomes, it simply will not be reported. This is especially useful for phylogenomic analyses, where you may want to only focus on gene clusters that are prevalent across the set of genomes you wish to analyze."
    max_num_genomes_gene_cluster_occurs: "This filter will remove gene clusters from your report. Let's assume you have 100 genomes in your pan genome analysis. You can use this parameter if you want to work only with gene clusters that occur in at most X number of genomes. If you say '--max-num- genomes-gene-cluster-occurs 1', you will get gene clusters that are singletons. Combining this parameter with --min-num-genomes-gene-cluster-occurs can give you a very precise way to filter your gene clusters."
    min_num_genes_from_each_genome: "This filter will remove gene clusters from your report. If you say '--min-num-genes-from-each-genome 2', this filter will remove every gene cluster, to which every genome in your analysis contributed less than 2 genes. This can be useful to find out gene clusters with many genes from many genomes (such as conserved multi-copy genes within a clade)."
    max_num_genes_from_each_genome: "This filter will remove gene clusters from your report. If you say '--max-num-genes-from-each-genome 1', every gene cluster that has more than one gene from any genome that contributes to it will be removed from your analysis. This could be useful to remove gene clusters with paralogs from your report for appropriate phylogenomic analyses. For instance, using '--max-num-genes-from-each-genome 1' and 'min-num- genomes-gene-cluster-occurs X' where X is the total number of your genomes, would give you the single-copy gene clusters in your pan genome."
    max_num_gene_clusters_missing_from_genome: "This filter will remove genomes from your report. If you have a list of gene cluster names, you can use this parameter to omit any genome from your report if it is missing more than a number of genes you desire. For instance, if you have 100 genomes in your pan genome, and you are interested in working only with genomes that have all 5 specific gene clusters of your choice, you can use '--max-num-gene-clusters-missing- from-genome 4' to remove remove the bins that are missing more than 4 of those 5 genes. This is especially useful for phylogenomic analyses. Parameter 0 will remove any genome that is missing any of the genes."
    min_functional_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--min-functional-homogeneity-index 0.3', every gene cluster with a functional homogeneity index less than 0.3 will be removed from your analysis. This can be useful if you only want to look at gene clusters that are highly conserved in resulting function"
    max_functional_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--max-functional-homogeneity-index 0.5', every gene cluster with a functional homogeneity index greater than 0.5 will be removed from your analysis. This can be useful if you only want to look at gene clusters that don't seem to be functionally conserved"
    min_geometric_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--min-geometric-homogeneity-index 0.3', every gene cluster with a geometric homogeneity index less than 0.3 will be removed from your analysis. This can be useful if you only want to look at gene clusters that are highly conserved in geometric configuration"
    max_geometric_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--max-geometric-homogeneity-index 0.5', every gene cluster with a geometric homogeneity index greater than 0.5 will be removed from your analysis. This can be useful if you only want to look at gene clusters that have many not be as conserved as others"
    min_combined_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--min-combined-homogeneity-index 0.3', every gene cluster with a combined homogeneity index less than 0.3 will be removed from your analysis. This can be useful if you only want to look at gene clusters that are highly conserved overall"
    max_combined_homogeneity_index: "This filter will remove gene clusters from your report. If you say '--max-combined-homogeneity-index 0.5', every gene cluster with a combined homogeneity index greater than 0.5 will be removed from your analysis. This can be useful if you only want to look at gene clusters that have many not be as conserved overall as others"
    add_into_items_additional_data_table: "If you use any of the filters, and would like to add the resulting item names into the items additional data table of your database, you can use this parameter. You will need to give a name for these results to be saved. If the given name is already in the items additional data table, its contents will be replaced with the new one. Then you can run anvi- interactive or anvi-display-pan to 'see' the results of your filters."
    list_collections: "Show available collections and exit."
    list_bins: "List available bins in a collection and exit."
    concatenate_gene_clusters: "Concatenate output gene clusters in the same order to create a multi-gene alignment output that is suitable for phylogenomic analyses."
    partition_file: "Some commonly used software for phylogenetic analyses (e.g., IQ-TREE, RAxML, etc) allow users to specify/test different substitution models for each gene of a concatenated multiple sequence alignments. For this, they use a special file format called a 'partition file', which indicates the site for each gene in the alignment. You can use this parameter to declare an output path for anvi'o to report a NEXUS format partition file in addition to your FASTA output (requested by Massimiliano Molari in #1333)."
    separator: "Characters to separate things (the default is whatever is most suitable)."
    align_with: "The multiple sequence alignment program to use when multiple sequence alignment is necessary. To see all available options, use the flag `--list-aligners`."
    list_aligners: "Show available software for multiple sequence alignment."
    just_do_it: "Don't bother me with questions or warnings, just do it."
    dry_run: "Don't do anything real. Test everything, and stop right before wherever the developer said 'well, this is enough testing', and decided to print out results."
  }
}