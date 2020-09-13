version 1.0

task RsatGeneinfo {
  input {
    Boolean? help
    Boolean? verbose
    Boolean? org
    Boolean? query_can_reiterated
    Boolean? query_file
    File? output_file
    Boolean? full
    Boolean? no_query
    Boolean? descr
    Boolean? feat_type
    String gene_info
    String genomics
    String query_dot
  }
  command <<<
    rsat gene_info \
      ~{gene_info} \
      ~{genomics} \
      ~{query_dot} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (query_can_reiterated) then "-q" else ""} \
      ~{if (query_file) then "-i" else ""} \
      ~{if (output_file) then "-o" else ""} \
      ~{if (full) then "-full" else ""} \
      ~{if (no_query) then "-noquery" else ""} \
      ~{if (descr) then "-descr" else ""} \
      ~{if (feat_type) then "-feattype" else ""}
  >>>
  parameter_meta {
    help: "display options"
    verbose: "verbose"
    org: "organism"
    query_can_reiterated: "query. can be reiterated within the same command line"
    query_file: "query file"
    output_file: "output file"
    full: "full match only (no substring matching)"
    no_query: "do not print the query at the beginning of each line"
    descr: "match queries against the description\\n(in addition to gene ID and  names)"
    feat_type: "Feature type.\\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
    gene_info: "USAGE"
    genomics: "OPTIONS"
    query_dot: "gene-info -org yeast -i query_file.txt"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}