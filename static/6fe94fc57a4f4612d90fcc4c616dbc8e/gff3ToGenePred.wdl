version 1.0

task Gff3ToGenePred {
  input {
    Boolean? warn_and_continue
    Boolean? use_name
    String? rna_name_attr
    Int? gene_name_attr
    File? attrs_out
    Boolean? process_all_gene_children
    File? unprocessed_roots_out
    File? bad
    Int? max_parse_error_s
    Int? max_convert_errors
    Boolean? honor_start_stop_codons
    Boolean? default_cds_status_to_unknown
    Boolean? allow_minimal_genes
    Boolean? refseq_hacks
    Int in_gff_three
  }
  command <<<
    gff3ToGenePred \
      ~{in_gff_three} \
      ~{if (warn_and_continue) then "-warnAndContinue" else ""} \
      ~{if (use_name) then "-useName" else ""} \
      ~{if defined(rna_name_attr) then ("-rnaNameAttr " +  '"' + rna_name_attr + '"') else ""} \
      ~{if defined(gene_name_attr) then ("-geneNameAttr " +  '"' + gene_name_attr + '"') else ""} \
      ~{if defined(attrs_out) then ("-attrsOut " +  '"' + attrs_out + '"') else ""} \
      ~{if (process_all_gene_children) then "-processAllGeneChildren" else ""} \
      ~{if defined(unprocessed_roots_out) then ("-unprocessedRootsOut " +  '"' + unprocessed_roots_out + '"') else ""} \
      ~{if defined(bad) then ("-bad " +  '"' + bad + '"') else ""} \
      ~{if defined(max_parse_error_s) then ("-maxParseErrors " +  '"' + max_parse_error_s + '"') else ""} \
      ~{if defined(max_convert_errors) then ("-maxConvertErrors " +  '"' + max_convert_errors + '"') else ""} \
      ~{if (honor_start_stop_codons) then "-honorStartStopCodons" else ""} \
      ~{if (default_cds_status_to_unknown) then "-defaultCdsStatusToUnknown" else ""} \
      ~{if (allow_minimal_genes) then "-allowMinimalGenes" else ""} \
      ~{if (refseq_hacks) then "-refseqHacks" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    warn_and_continue: "- on bad genePreds being created, put out warning but continue"
    use_name: "- rather than using 'id' as name, use the 'name' tag"
    rna_name_attr: "- If this attribute exists on an RNA record, use it as the genePred\\nname column"
    gene_name_attr: "- If this attribute exists on a gene record, use it as the genePred\\nname2 column"
    attrs_out: "- output attributes of mRNA record to file.  These are per-genePred row,\\nnot per-GFF3 record. Thery are derived from GFF3 attributes, not the attributes themselves."
    process_all_gene_children: "- output genePred for all children of a gene regardless of feature"
    unprocessed_roots_out: "- output GFF3 root records that were not used.  This will not be a\\nvalid GFF3 file.  It's expected that many non-root records will not be used and they are not\\nreported."
    bad: "- output genepreds that fail checks to file"
    max_parse_error_s: "- Maximum number of parsing errors before aborting. A negative\\nvalue will allow an unlimited number of errors.  Default is 50."
    max_convert_errors: "- Maximum number of conversion errors before aborting. A negative\\nvalue will allow an unlimited number of errors.  Default is 50."
    honor_start_stop_codons: "- only set CDS start/stop status to complete if there are\\ncorresponding start_stop codon records"
    default_cds_status_to_unknown: "- default the CDS status to unknown rather\\nthan complete."
    allow_minimal_genes: "- normally this programs assumes that genes contains\\ntranscripts which contain exons.  If this option is specified, genes with exons\\nas direct children of genes and stand alone genes with no exon or transcript\\nchildren will be converted."
    refseq_hacks: "- enable various hacks to make RefSeq conversion work:\\nThis turns on -useName, -allowMinimalGenes, and -processAllGeneChildren.\\nIt try harder to find an accession in attributes"
    in_gff_three: ""
  }
  output {
    File out_stdout = stdout()
    File out_attrs_out = "${in_attrs_out}"
    File out_unprocessed_roots_out = "${in_unprocessed_roots_out}"
    File out_bad = "${in_bad}"
  }
}