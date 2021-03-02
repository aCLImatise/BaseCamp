class: CommandLineTool
id: rsat_gene_info.cwl
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
- id: in_org
  doc: organism
  type: boolean?
  inputBinding:
    prefix: -org
- id: in_query_reiterated_same
  doc: query. can be reiterated within the same command line
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_query_file
  doc: query file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_full
  doc: full match only (no substring matching)
  type: boolean?
  inputBinding:
    prefix: -full
- id: in_no_query
  doc: do not print the query at the beginning of each line
  type: boolean?
  inputBinding:
    prefix: -noquery
- id: in_descr
  doc: "match queries against the description\n(in addition to gene ID and  names)"
  type: boolean?
  inputBinding:
    prefix: -descr
- id: in_feat_type
  doc: "Feature type.\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
  type: boolean?
  inputBinding:
    prefix: -feattype
- id: in_gene_info
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_genomics
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_query_dot
  doc: gene-info -org yeast -i query_file.txt
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- gene-info
