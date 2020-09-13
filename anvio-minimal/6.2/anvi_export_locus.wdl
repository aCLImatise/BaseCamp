version 1.0

task Anviexportlocus {
  input {
    String? contigs_db
    String? search_term
    String? gene_caller_ids
    String? delimiter
    File? output_dir
    File? output_file_prefix
    Boolean? flank_mode
    Int? num_genes
    Boolean? use_hmm
    Int? hmm_sources
    Boolean? list_hmm_sources
    Int? annotation_sources
    Boolean? overwrite_output_destinations
    Boolean? remove_partial_hits
    Boolean? never_reverse_complement
  }
  command <<<
    anvi_export_locus \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(search_term) then ("--search-term " +  '"' + search_term + '"') else ""} \
      ~{if defined(gene_caller_ids) then ("--gene-caller-ids " +  '"' + gene_caller_ids + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if (flank_mode) then "--flank-mode" else ""} \
      ~{if defined(num_genes) then ("--num-genes " +  '"' + num_genes + '"') else ""} \
      ~{if (use_hmm) then "--use-hmm" else ""} \
      ~{if defined(hmm_sources) then ("--hmm-sources " +  '"' + hmm_sources + '"') else ""} \
      ~{if (list_hmm_sources) then "--list-hmm-sources" else ""} \
      ~{if defined(annotation_sources) then ("--annotation-sources " +  '"' + annotation_sources + '"') else ""} \
      ~{if (overwrite_output_destinations) then "--overwrite-output-destinations" else ""} \
      ~{if (remove_partial_hits) then "--remove-partial-hits" else ""} \
      ~{if (never_reverse_complement) then "--never-reverse-complement" else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    search_term: "search term."
    gene_caller_ids: "Gene caller ids. Multiple of them can be declared\\nseparated by a delimiter (the default is a comma). In\\nanvi-gen-variability-profile, if you declare nothing\\nyou will get all genes matching your other filtering\\ncriteria. In other programs, you may get everything,\\nnothing, or an error. It really depends on the\\nsituation. Fortunately, mistakes are cheap, so it's\\nworth a try."
    delimiter: "The delimiter to parse multiple input terms. The\\ndefault is ','."
    output_dir: "Directory path for output files"
    output_file_prefix: "A prefix to be used while naming the output files (no\\nfile type extensions please; just a prefix)."
    flank_mode: "If in --flank-mode, anvi-export-locus will extract a\\nlocus based on the coordinates of flanking genes. You\\nMUST provide 2 flanking genes in the form of TWO\\n--search-term, --gene-caller-ids, or --hmm-sources.\\nThe --flank-mode option is appropriate for extracting\\nloci of variable gene number lengths, but are\\nconsistently located between the same flanking genes\\nin the genome(s) of interest."
    num_genes: "Required for DEFAULT mode. For each match (to the\\nfunction, or HMM that was searched) a sequence which\\nincludes a block of genes will be saved. The block\\ncould include either genes only in the forward\\ndirection of the gene (defined according to the\\ndirection of transcription of the gene) or reverse or\\nboth. If you wish to get both direction use a comma\\n(no spaces) to define the block For example, '-n 4,5'\\nwill give you four genes before and five genes after.\\nWhereas, '-n 5' will give you five genes after (in\\naddition to the gene that matched). To get only genes\\npreceding the match use '-n 5,0'. If the number of\\ngenes requested exceeds the length of the contig, then\\nthe output will include the sequence until the end of\\nthe contig."
    use_hmm: "Use HMM hits instead of functional annotations. In\\nother words, --search-term will be queried against HMM\\nsource annotations, NOT functional annotations. If you\\nchoose this option, you must also say which HMM source\\nto use."
    hmm_sources: "NAME\\nGet sequences for a specific list of HMM sources. You\\ncan list one or more sources by separating them from\\neach other with a comma character (i.e., '--hmm-\\nsources source_1,source_2,source_3'). If you would\\nlike to see a list of available sources in the contigs\\ndatabase, run this program with '--list-hmm-sources'\\nflag."
    list_hmm_sources: "List available HMM sources in the contigs database and\\nquit."
    annotation_sources: "NAME[S]\\nGet functional annotations for a specific list of\\nannotation sources. You can specify one or more\\nsources by separating them from each other with a\\ncomma character (i.e., '--annotation-sources\\nsource_1,source_2,source_3'). The default behavior is\\nto return everything"
    overwrite_output_destinations: "Overwrite if the output files and/or directories\\nexist."
    remove_partial_hits: "By default anvi'o will return hits even if they are\\npartial. Declaring this flag will make anvi'o filter\\nall hits that are partial. Partial hits are hits in\\nwhich you asked for n1 genes before and n2 genes after\\nthe gene that matched the search criteria but the\\nsearch hits the end of the contig before finding the\\nnumber of genes that you asked."
    never_reverse_complement: "By default, if a gene that is found by the search\\ncriteria is reverse in it's direction, then the\\nsequence of the entire locus is reversed before it is\\nsaved to the output. If you wish to prevent this\\nbehavior then use the flag --never-reverse-complement.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}