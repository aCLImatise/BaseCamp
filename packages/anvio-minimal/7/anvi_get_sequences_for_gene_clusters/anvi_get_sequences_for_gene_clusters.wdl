version 1.0

task Anvigetsequencesforgeneclusters {
  input {
    String? pan_db
    File? genomes_storage
    File? output_file
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
    anvi_get_sequences_for_gene_clusters \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (report_dna_sequences) then "--report-DNA-sequences" else ""} \
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
      ~{if (list_collections) then "--list-collections" else ""} \
      ~{if (list_bins) then "--list-bins" else ""} \
      ~{if (concatenate_gene_clusters) then "--concatenate-gene-clusters" else ""} \
      ~{if defined(partition_file) then ("--partition-file " +  '"' + partition_file + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(align_with) then ("--align-with " +  '"' + align_with + '"') else ""} \
      ~{if (list_aligners) then "--list-aligners" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_db: "Anvi'o pan database (default: None)"
    genomes_storage: "Anvi'o genomes storage file (default: None)"
    output_file: "File path to store results. (default: None)"
    report_dna_sequences: "By default, this program reports amino acid sequences.\\nUse this flag to report DNA sequences instead.\\n(default: False)"
    gene_cluster_id: "Gene cluster ID you are interested in. (default: None)"
    gene_cluster_ids_file: "Text file for gene clusters (each line should contain\\nbe a unique gene cluster id). (default: None)"
    collection_name: "Collection name. (default: None)"
    bin_id: "Bin name you are interested in. (default: None)"
    min_num_genomes_gene_cluster_occurs: "This filter will remove gene clusters from your\\nreport. Let's assume you have 100 genomes in your pan\\ngenome analysis. You can use this parameter if you\\nwant to work only with gene clusters that occur in at\\nleast X number of genomes. If you say '--min-num-\\ngenomes-gene-cluster-occurs 90', each gene cluster in\\nthe analysis will be required at least to appear in 90\\ngenomes. If a gene occurs in less than that number of\\ngenomes, it simply will not be reported. This is\\nespecially useful for phylogenomic analyses, where you\\nmay want to only focus on gene clusters that are\\nprevalent across the set of genomes you wish to\\nanalyze. (default: 0)"
    max_num_genomes_gene_cluster_occurs: "This filter will remove gene clusters from your\\nreport. Let's assume you have 100 genomes in your pan\\ngenome analysis. You can use this parameter if you\\nwant to work only with gene clusters that occur in at\\nmost X number of genomes. If you say '--max-num-\\ngenomes-gene-cluster-occurs 1', you will get gene\\nclusters that are singletons. Combining this parameter\\nwith --min-num-genomes-gene-cluster-occurs can give\\nyou a very precise way to filter your gene clusters.\\n(default: 9223372036854775807)"
    min_num_genes_from_each_genome: "This filter will remove gene clusters from your\\nreport. If you say '--min-num-genes-from-each-genome\\n2', this filter will remove every gene cluster, to\\nwhich every genome in your analysis contributed less\\nthan 2 genes. This can be useful to find out gene\\nclusters with many genes from many genomes (such as\\nconserved multi-copy genes within a clade). (default:\\n0)"
    max_num_genes_from_each_genome: "This filter will remove gene clusters from your\\nreport. If you say '--max-num-genes-from-each-genome\\n1', every gene cluster that has more than one gene\\nfrom any genome that contributes to it will be removed\\nfrom your analysis. This could be useful to remove\\ngene clusters with paralogs from your report for\\nappropriate phylogenomic analyses. For instance, using\\n'--max-num-genes-from-each-genome 1' and 'min-num-\\ngenomes-gene-cluster-occurs X' where X is the total\\nnumber of your genomes, would give you the single-copy\\ngene clusters in your pan genome. (default:\\n9223372036854775807)"
    max_num_gene_clusters_missing_from_genome: "This filter will remove genomes from your report. If\\nyou have a list of gene cluster names, you can use\\nthis parameter to omit any genome from your report if\\nit is missing more than a number of genes you desire.\\nFor instance, if you have 100 genomes in your pan\\ngenome, and you are interested in working only with\\ngenomes that have all 5 specific gene clusters of your\\nchoice, you can use '--max-num-gene-clusters-missing-\\nfrom-genome 4' to remove remove the bins that are\\nmissing more than 4 of those 5 genes. This is\\nespecially useful for phylogenomic analyses. Parameter\\n0 will remove any genome that is missing any of the\\ngenes. (default: 0)"
    min_functional_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--min-functional-homogeneity-index\\n0.3', every gene cluster with a functional homogeneity\\nindex less than 0.3 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that are highly conserved in\\nresulting function (default: -1)"
    max_functional_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--max-functional-homogeneity-index\\n0.5', every gene cluster with a functional homogeneity\\nindex greater than 0.5 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that don't seem to be functionally\\nconserved (default: 1)"
    min_geometric_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--min-geometric-homogeneity-index\\n0.3', every gene cluster with a geometric homogeneity\\nindex less than 0.3 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that are highly conserved in\\ngeometric configuration (default: -1)"
    max_geometric_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--max-geometric-homogeneity-index\\n0.5', every gene cluster with a geometric homogeneity\\nindex greater than 0.5 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that have many not be as conserved as\\nothers (default: 1)"
    min_combined_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--min-combined-homogeneity-index\\n0.3', every gene cluster with a combined homogeneity\\nindex less than 0.3 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that are highly conserved overall\\n(default: -1)"
    max_combined_homogeneity_index: "This filter will remove gene clusters from your\\nreport. If you say '--max-combined-homogeneity-index\\n0.5', every gene cluster with a combined homogeneity\\nindex greater than 0.5 will be removed from your\\nanalysis. This can be useful if you only want to look\\nat gene clusters that have many not be as conserved\\noverall as others (default: 1)"
    add_into_items_additional_data_table: "If you use any of the filters, and would like to add\\nthe resulting item names into the items additional\\ndata table of your database, you can use this\\nparameter. You will need to give a name for these\\nresults to be saved. If the given name is already in\\nthe items additional data table, its contents will be\\nreplaced with the new one. Then you can run anvi-\\ninteractive or anvi-display-pan to 'see' the results\\nof your filters. (default: None)"
    list_collections: "Show available collections and exit. (default: False)"
    list_bins: "List available bins in a collection and exit.\\n(default: False)"
    concatenate_gene_clusters: "Concatenate output gene clusters in the same order to\\ncreate a multi-gene alignment output that is suitable\\nfor phylogenomic analyses. (default: False)"
    partition_file: "Some commonly used software for phylogenetic analyses\\n(e.g., IQ-TREE, RAxML, etc) allow users to\\nspecify/test different substitution models for each\\ngene of a concatenated multiple sequence alignments.\\nFor this, they use a special file format called a\\n'partition file', which indicates the site for each\\ngene in the alignment. You can use this parameter to\\ndeclare an output path for anvi'o to report a NEXUS\\nformat partition file in addition to your FASTA output\\n(requested by Massimiliano Molari in #1333). (default:\\nNone)"
    separator: "Characters to separate things (the default is whatever\\nis most suitable). (default: None)"
    align_with: "The multiple sequence alignment program to use when\\nmultiple sequence alignment is necessary. To see all\\navailable options, use the flag `--list-aligners`.\\n(default: None)"
    list_aligners: "Show available software for multiple sequence\\nalignment. (default: False)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    dry_run: "Don't do anything real. Test everything, and stop\\nright before wherever the developer said 'well, this\\nis enough testing', and decided to print out results.\\n(default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_partition_file = "${in_partition_file}"
  }
}