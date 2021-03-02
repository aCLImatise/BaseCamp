class: CommandLineTool
id: rsat_add_gene_info.cwl
inputs:
- id: in_help
  doc: display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_col
  doc: column containing gene IDs.
  type: boolean?
  inputBinding:
    prefix: -col
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -i
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -o
- id: in_info
  doc: 'information type (supported: id,ctg,strand,left,right,name,descr,names,upstr_neighb_name,upstr_neighb_id,upstr_limit,upstr_size,downstr_neighb_name,downstr_neighb_id,downstr_limit,downstr_size,right_neighb_name,right_neighb_id,right_limit,right_size,left_neighb_name,left_neighb_id,left_limit,left_size)'
  type: string?
  inputBinding:
    prefix: -info
- id: in_before
  doc: "the information before the input line (by default,\nthe info is added at the\
    \ end of each input line)."
  type: string?
  inputBinding:
    prefix: -before
- id: in_null
  doc: 'to display for undefined values (default: <NULL>).'
  type: string?
  inputBinding:
    prefix: -null
- id: in_feat_type
  doc: "Feature type.\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
  type: boolean?
  inputBinding:
    prefix: -feattype
- id: in_add_gene_info
  doc: DESCRIPTION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- add-gene-info
