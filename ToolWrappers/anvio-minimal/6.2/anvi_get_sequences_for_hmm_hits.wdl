version 1.0

task Anvigetsequencesforhmmhits {
  input {
    String? contigs_db
    String? profile_db
    String? collection_name
    String? bin_id
    File? bin_ids_file
    File? external_genomes
    File? internal_genomes
    Int? hmm_sources
    Int? gene_names
    Boolean? list_hmm_sources
    Boolean? list_available_gene_names
    File? output_file
    File? no_wrap
    Boolean? get_aa_sequences
    Boolean? concatenate_genes
    File? partition_file
    Int? max_num_genes_missing_from_bin
    Int? min_num_bins_gene_occurs
    String? align_with
    String? separator
    Boolean? return_best_hit
    Boolean? just_do_it
  }
  command <<<
    anvi_get_sequences_for_hmm_hits \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{if defined(bin_ids_file) then ("--bin-ids-file " +  '"' + bin_ids_file + '"') else ""} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(hmm_sources) then ("--hmm-sources " +  '"' + hmm_sources + '"') else ""} \
      ~{if defined(gene_names) then ("--gene-names " +  '"' + gene_names + '"') else ""} \
      ~{if (list_hmm_sources) then "--list-hmm-sources" else ""} \
      ~{if (list_available_gene_names) then "--list-available-gene-names" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (no_wrap) then "--no-wrap" else ""} \
      ~{if (get_aa_sequences) then "--get-aa-sequences" else ""} \
      ~{if (concatenate_genes) then "--concatenate-genes" else ""} \
      ~{if defined(partition_file) then ("--partition-file " +  '"' + partition_file + '"') else ""} \
      ~{if defined(max_num_genes_missing_from_bin) then ("--max-num-genes-missing-from-bin " +  '"' + max_num_genes_missing_from_bin + '"') else ""} \
      ~{if defined(min_num_bins_gene_occurs) then ("--min-num-bins-gene-occurs " +  '"' + min_num_bins_gene_occurs + '"') else ""} \
      ~{if defined(align_with) then ("--align-with " +  '"' + align_with + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (return_best_hit) then "--return-best-hit" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    profile_db: "Anvi'o profile database"
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    bin_ids_file: "Text file for bins (each line should be a unique bin\\nid)."
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome."
    internal_genomes: "A five-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path'.\\nEach line should list a single entry, where 'name' can\\nbe any name to describe the anvi'o bin identified as\\n'bin_id' that is stored in a collection."
    hmm_sources: "NAME\\nGet sequences for a specific list of HMM sources. You\\ncan list one or more sources by separating them from\\neach other with a comma character (i.e., '--hmm-\\nsources source_1,source_2,source_3'). If you would\\nlike to see a list of available sources in the contigs\\ndatabase, run this program with '--list-hmm-sources'\\nflag."
    gene_names: "HIT NAME\\nGet sequences only for a specific gene name. Each name\\nshould be separated from each other by a comma\\ncharacter. For instance, if you want to get back only\\nRecA and Ribosomal_L27, you can type '--gene-names\\nRecA,Ribosomal_L27', and you will get any and every\\nhit that matches these names in any source. If you\\nwould like to see a list of available gene names, you\\ncan use '--list-available-gene-names' flag."
    list_hmm_sources: "List available HMM sources in the contigs database and\\nquit."
    list_available_gene_names: "List available gene names in HMM sources selection and\\nquit."
    output_file: "File path to store results."
    no_wrap: "Do not be wrap sequences nicely in the output file."
    get_aa_sequences: "Store amino acid sequences instead."
    concatenate_genes: "Concatenate output genes in the same order to create a\\nmulti-gene alignment output that is suitable for\\nphylogenomic analyses."
    partition_file: "Some commonly used software for phylogenetic analyses\\n(e.g., IQ-TREE, RAxML, etc) allow users to\\nspecify/test different substitution models for each\\ngene of a concatenated multiple sequence alignments.\\nFor this, they use a special file format called a\\n'partition file', which indicates the site for each\\ngene in the alignment. You can use this parameter to\\ndeclare an output path for anvi'o to report a NEXUS\\nformat partition file in addition to your FASTA output\\n(requested by Massimiliano Molari in #1333)."
    max_num_genes_missing_from_bin: "This filter removes bins (or genomes) from your\\nanalysis. If you have a list of gene names, you can\\nuse this parameter to omit any bin (or external\\ngenome) that is missing more than a number of genes\\nyou desire. For instance, if you have 100 genome bins,\\nand you are interested in working with 5 ribosomal\\nproteins, you can use '--max-num-genes-missing-from-\\nbin 4' to remove the bins that are missing more than 4\\nof those 5 genes. This is especially useful for\\nphylogenomic analyses. Parameter 0 will remove any bin\\nthat is missing any of the genes."
    min_num_bins_gene_occurs: "This filter removes genes from your analysis. Let's\\nassume you have 100 bins to get sequences for HMM\\nhits. If you want to work only with genes among all\\nthe hits that occur in at least X number of bins, and\\ndiscard the rest of them, you can use this flag. If\\nyou say '--min-num-bins-gene-occurs 90', each gene in\\nthe analysis will be required at least to appear in 90\\ngenomes. If a gene occurs in less than that number of\\ngenomes, it simply will not be reported. This is\\nespecially useful for phylogenomic analyses, where you\\nmay want to only focus on genes that are prevalent\\nacross the set of genomes you wish to analyze."
    align_with: "The multiple sequence alignment program to use when\\nmultiple sequence alignment is necessary. To see all\\navailable options, use the flag `--list-aligners`."
    separator: "A word that will be used to sepaate concatenated gene\\nsequences from each other (IF you are using this\\nprogram with `--concatenate-genes` flag). The default\\nis \\\"XXX\\\" for amino acid sequences, and \\\"NNN\\\" for DNA\\nsequences"
    return_best_hit: "A bin may contain more than one hit for a gene name in\\na given HMM source. For instance, there may be\\nmultiple RecA hits in a genome bin from Campbell et\\nal.. Using this flag, will go through all of the gene\\nnames that appear multiple times, and remove all but\\nthe one with the lowest e-value. Good for whenever you\\nreally need to get only a single copy of single-copy\\ncore genes from a genome bin."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_wrap = "${in_no_wrap}"
    File out_partition_file = "${in_partition_file}"
  }
}