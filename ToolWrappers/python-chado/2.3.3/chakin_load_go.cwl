class: CommandLineTool
id: chakin_load_go.cwl
inputs:
- id: in_query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\n'contig') of the query.\
    \ It must be a valid Sequence\nOntology term.  [default: polypeptide]"
  type: string
  inputBinding:
    prefix: --query_type
- id: in_match_on_name
  doc: Match features using their name instead of their
  type: boolean
  inputBinding:
    prefix: --match_on_name
- id: in_go_column
  doc: "Column containing the GO id (default=5).  [default:\n5]"
  type: long
  inputBinding:
    prefix: --go_column
- id: in_re_name
  doc: "Regular expression to extract the feature name from\nthe input file (first\
    \ capturing group will be used)."
  type: File
  inputBinding:
    prefix: --re_name
- id: in_skip_missing
  doc: "Skip lines with unknown features or GO id instead of\naborting everything."
  type: boolean
  inputBinding:
    prefix: --skip_missing
- id: in_unique_name
  doc: --name_column INTEGER  Column containing the feature identifiers (2, 3, 10
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- load
- go
