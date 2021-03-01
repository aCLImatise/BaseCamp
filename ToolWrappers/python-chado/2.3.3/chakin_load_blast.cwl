class: CommandLineTool
id: chakin_load_blast.cwl
inputs:
- id: in_blast_db
  doc: "Name of the database blasted against (must be in the\nChado db table)"
  type: string?
  inputBinding:
    prefix: --blastdb
- id: in_blast_db_id
  doc: "ID of the database blasted against (must be in the\nChado db table)"
  type: long?
  inputBinding:
    prefix: --blastdb_id
- id: in_re_name
  doc: "Regular expression to extract the feature name from\nthe input file (first\
    \ capturing group will be used)."
  type: File?
  inputBinding:
    prefix: --re_name
- id: in_query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\n'contig') of the query.\
    \ It must be a valid Sequence\nOntology term.  [default: polypeptide]"
  type: string?
  inputBinding:
    prefix: --query_type
- id: in_match_on_name
  doc: Match features using their name instead of their
  type: boolean?
  inputBinding:
    prefix: --match_on_name
- id: in_module
  doc: "Output:\nNumber of processed hits"
  type: string
  inputBinding:
    position: 0
- id: in_unique_name
  doc: --skip_missing        Skip lines with unknown features or GO id instead of
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
- chakin
- load
- blast
