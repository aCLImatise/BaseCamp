version 1.0

task RsatRetrieveensemblseq {
  input {
    String? org
    Boolean? ensembl_host
    String? dbname
    Boolean? db_version
    Boolean? feat_type
    Boolean? type
    Int? utr
    Int? query_be_gene
    Boolean? query_file_taken
    Boolean? all
    File? name_output_file
    Boolean? from
    Boolean? no_orf
    String? no_gene
    Boolean? mask_coding
    Boolean? rm
    Boolean? all_transcripts
    Boolean? uniq_seqs
    Boolean? first_intron
    Boolean? noncoding
    Boolean? chrom
    Boolean? left_limit_sequence
    Boolean? right_limit_retrieve
    Int? strand
    File? ft_file
    Boolean? ft_file_format
    Boolean? ortho
    Int? ortho_type
    File? homologs_table
    String? tax_on
    Boolean? header_org
    String? label
    String genomics
  }
  command <<<
    rsat retrieve_ensembl_seq \
      ~{genomics} \
      ~{if defined(org) then ("-org " +  '"' + org + '"') else ""} \
      ~{if (ensembl_host) then "-ensemblhost" else ""} \
      ~{if defined(dbname) then ("-dbname " +  '"' + dbname + '"') else ""} \
      ~{if (db_version) then "-dbversion" else ""} \
      ~{if (feat_type) then "-feattype" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if defined(utr) then ("-utr " +  '"' + utr + '"') else ""} \
      ~{if defined(query_be_gene) then ("-q " +  '"' + query_be_gene + '"') else ""} \
      ~{if (query_file_taken) then "-i" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (name_output_file) then "-o" else ""} \
      ~{if (from) then "-from" else ""} \
      ~{if (no_orf) then "-noorf" else ""} \
      ~{if defined(no_gene) then ("-nogene " +  '"' + no_gene + '"') else ""} \
      ~{if (mask_coding) then "-maskcoding" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (all_transcripts) then "-alltranscripts" else ""} \
      ~{if (uniq_seqs) then "-uniqseqs" else ""} \
      ~{if (first_intron) then "-firstintron" else ""} \
      ~{if (noncoding) then "-noncoding" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (left_limit_sequence) then "-left" else ""} \
      ~{if (right_limit_retrieve) then "-right" else ""} \
      ~{if defined(strand) then ("-strand " +  '"' + strand + '"') else ""} \
      ~{if defined(ft_file) then ("-ftfile " +  '"' + ft_file + '"') else ""} \
      ~{if (ft_file_format) then "-ftfileformat" else ""} \
      ~{if (ortho) then "-ortho" else ""} \
      ~{if defined(ortho_type) then ("-ortho_type " +  '"' + ortho_type + '"') else ""} \
      ~{if defined(homologs_table) then ("-homologs_table " +  '"' + homologs_table + '"') else ""} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""} \
      ~{if (header_org) then "-header_org" else ""} \
      ~{if defined(label) then ("-label " +  '"' + label + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    org: "underscore between words (eg 'homo_sapiens')\\nIf this option is not used, the option -dbname must be used\\ninstead.\\n(type 'supported-organisms | grep EnsEMBL' to obtain the list of supported\\norganisms)"
    ensembl_host: "address of ensembl database server (default is EBI server)"
    dbname: "of EnsEMBL database\\n(alternative to organism)"
    db_version: "version of ensembl database (example: 47)"
    feat_type: "Feature type.\\nSupported: cds,exon,gene,intron,mrna,transcript,utr\\nDefaut: mrna"
    type: "sequence type\\nCurrently supported sequence types\\nupstream (default)\\ndownstream\\nfeature"
    utr: "Type(s) of UTR (untranslated region) to return.\\nSupported: all | 5prime | 3prime"
    query_be_gene: "The query should be an EnsEMBL gene identifier (eg 'ENSG00000177799').\\nMultiple queries can be entered by reiteratively using the -q\\noption."
    query_file_taken: "query file. The first word of each line is taken as a query.\\nThis option is incompatible with -q."
    all: "return all genomic upstream/downstream regions"
    name_output_file: "name of the output file"
    from: "#1 -to #2\\nwhere #1 and #2 are numbers. #2 should be higher than #1.\\nlimits of the region to extract, relative to feattype start or end\\n(=position 0). Use negative values for upstream sequence.\\nexample: -from -800 -to -1\\nwill extract the 800 bp upstream the feattype start or end.\\n(this is the default"
    no_orf: "the upstream/downstream sequence can only contain non-coding sequence.\\ni.e. the -from values is modified if a predicted orf\\nis encountered within its range.\\nThe weaknesses of using this option are that\\n- all predicted orf do not correspond to real orf,\\n- there is no a priori reason to exclude a regulatory site\\nwhich would overlap the upstream coding sequence."
    no_gene: "upstream/downstream sequence can only contain non-transcribed sequence."
    mask_coding: "all coding sequence is replaced by N in the retrieved sequence"
    rm: "Use the repeat masked version of the genome.  Attention :\\nrepeated regions are annotated for some genomes only."
    all_transcripts: "Get sequences for all transcripts of genes.\\nUse -uniqseqs if you do motif discovery afterwards"
    uniq_seqs: "With -alltranscripts, returns only non-redondant sequences"
    first_intron: "With feattype intron, get only first intron sequence"
    noncoding: "With feattype exon, get only non-coding (part of) exons"
    chrom: "Chromosome name or number (to use with -left and -right)"
    left_limit_sequence: "Left limit of sequence to retrieve"
    right_limit_retrieve: "Right limit of sequence to retrieve"
    strand: "of sequence to retrieve when using -left and -right. Values: 1, -1"
    ft_file: "file"
    ft_file_format: "Feature file format. Supported: ft, gft"
    ortho: "Retrieve homologous sequences from EnsEMBL Compara databases"
    ortho_type: "Filter on homology type. (example: ortholog, ortholog_one2one)"
    homologs_table: "name\\nPrints homology info to a tab delimited file"
    tax_on: "Filter on taxonomic level (example: Mammalia)"
    header_org: "Type of organism name to use in the fasta header (scientific, common or none).\\nDefault is scientific. Common name is only accessible with -ortho."
    label: "Information used as sequence label in the fasta header.\\nSupported label types:\\n-label query\\nuse as sequence label the identifier or name used as query.\\n"
    genomics: "sequences"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}