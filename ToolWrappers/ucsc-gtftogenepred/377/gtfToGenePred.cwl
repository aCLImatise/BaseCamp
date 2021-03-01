class: CommandLineTool
id: gtfToGenePred.cwl
inputs:
- id: in_gene_pred_ext
  doc: "- create a extended genePred, including frame\ninformation and gene name"
  type: boolean?
  inputBinding:
    prefix: -genePredExt
- id: in_all_errors
  doc: "- skip groups with errors rather than aborting.\nUseful for getting infomation\
    \ about as many errors as possible."
  type: boolean?
  inputBinding:
    prefix: -allErrors
- id: in_ignore_groups_without_exons
  doc: "- skip groups contain no exons rather than\ngenerate an error."
  type: boolean?
  inputBinding:
    prefix: -ignoreGroupsWithoutExons
- id: in_info_out
  doc: '- write a file with information on each transcript'
  type: File?
  inputBinding:
    prefix: -infoOut
- id: in_source_prefix
  doc: "- only process entries where the source name has the\nspecified prefix.  May\
    \ be repeated."
  type: string?
  inputBinding:
    prefix: -sourcePrefix
- id: in_implied_stop_after_cds
  doc: '- implied stop codon in after CDS'
  type: boolean?
  inputBinding:
    prefix: -impliedStopAfterCds
- id: in_simple
  doc: '- just check column validity, not hierarchy, resulting genePred may be damaged'
  type: boolean?
  inputBinding:
    prefix: -simple
- id: in_gene_name_as_name_two
  doc: "- if specified, use gene_name for the name2 field\ninstead of gene_id."
  type: boolean?
  inputBinding:
    prefix: -geneNameAsName2
- id: in_include_version
  doc: "- it gene_version and/or transcript_version attributes exist, include the\
    \ version\nin the corresponding identifiers.\n"
  type: boolean?
  inputBinding:
    prefix: -includeVersion
- id: in_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gtfToGenePred
