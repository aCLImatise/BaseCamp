class: CommandLineTool
id: gff3ToGenePred.cwl
inputs:
- id: in_warn_and_continue
  doc: '- on bad genePreds being created, put out warning but continue'
  type: boolean?
  inputBinding:
    prefix: -warnAndContinue
- id: in_use_name
  doc: "- rather than using 'id' as name, use the 'name' tag"
  type: boolean?
  inputBinding:
    prefix: -useName
- id: in_rna_name_attr
  doc: "- If this attribute exists on an RNA record, use it as the genePred\nname\
    \ column"
  type: string?
  inputBinding:
    prefix: -rnaNameAttr
- id: in_gene_name_attr
  doc: "- If this attribute exists on a gene record, use it as the genePred\nname2\
    \ column"
  type: long?
  inputBinding:
    prefix: -geneNameAttr
- id: in_attrs_out
  doc: "- output attributes of mRNA record to file.  These are per-genePred row,\n\
    not per-GFF3 record. Thery are derived from GFF3 attributes, not the attributes\
    \ themselves."
  type: File?
  inputBinding:
    prefix: -attrsOut
- id: in_process_all_gene_children
  doc: '- output genePred for all children of a gene regardless of feature'
  type: boolean?
  inputBinding:
    prefix: -processAllGeneChildren
- id: in_unprocessed_roots_out
  doc: "- output GFF3 root records that were not used.  This will not be a\nvalid\
    \ GFF3 file.  It's expected that many non-root records will not be used and they\
    \ are not\nreported."
  type: File?
  inputBinding:
    prefix: -unprocessedRootsOut
- id: in_bad
  doc: '- output genepreds that fail checks to file'
  type: File?
  inputBinding:
    prefix: -bad
- id: in_max_parse_error_s
  doc: "- Maximum number of parsing errors before aborting. A negative\nvalue will\
    \ allow an unlimited number of errors.  Default is 50."
  type: long?
  inputBinding:
    prefix: -maxParseErrors
- id: in_max_convert_errors
  doc: "- Maximum number of conversion errors before aborting. A negative\nvalue will\
    \ allow an unlimited number of errors.  Default is 50."
  type: long?
  inputBinding:
    prefix: -maxConvertErrors
- id: in_honor_start_stop_codons
  doc: "- only set CDS start/stop status to complete if there are\ncorresponding start_stop\
    \ codon records"
  type: boolean?
  inputBinding:
    prefix: -honorStartStopCodons
- id: in_default_cds_status_to_unknown
  doc: "- default the CDS status to unknown rather\nthan complete."
  type: boolean?
  inputBinding:
    prefix: -defaultCdsStatusToUnknown
- id: in_allow_minimal_genes
  doc: "- normally this programs assumes that genes contains\ntranscripts which contain\
    \ exons.  If this option is specified, genes with exons\nas direct children of\
    \ genes and stand alone genes with no exon or transcript\nchildren will be converted."
  type: boolean?
  inputBinding:
    prefix: -allowMinimalGenes
- id: in_refseq_hacks
  doc: "- enable various hacks to make RefSeq conversion work:\nThis turns on -useName,\
    \ -allowMinimalGenes, and -processAllGeneChildren.\nIt try harder to find an accession\
    \ in attributes"
  type: boolean?
  inputBinding:
    prefix: -refseqHacks
- id: in_in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_attrs_out
  doc: "- output attributes of mRNA record to file.  These are per-genePred row,\n\
    not per-GFF3 record. Thery are derived from GFF3 attributes, not the attributes\
    \ themselves."
  type: File?
  outputBinding:
    glob: $(inputs.in_attrs_out)
- id: out_unprocessed_roots_out
  doc: "- output GFF3 root records that were not used.  This will not be a\nvalid\
    \ GFF3 file.  It's expected that many non-root records will not be used and they\
    \ are not\nreported."
  type: File?
  outputBinding:
    glob: $(inputs.in_unprocessed_roots_out)
- id: out_bad
  doc: '- output genepreds that fail checks to file'
  type: File?
  outputBinding:
    glob: $(inputs.in_bad)
hints: []
cwlVersion: v1.1
baseCommand:
- gff3ToGenePred
