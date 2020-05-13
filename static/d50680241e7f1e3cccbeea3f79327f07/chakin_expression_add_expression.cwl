class: CommandLineTool
id: chakin_expression_add_expression.cwl
inputs:
- id: separator
  doc: "Separating character in the matrix file (ex : ','). Default character is tab.\
    \  [default:        ]"
  type: string
  inputBinding:
    prefix: --separator
- id: unit
  doc: The units associated with the loaded values (ie, FPKM, RPKM, raw counts)
  type: string
  inputBinding:
    prefix: --unit
- id: query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide', 'contig') of the query.\
    \ It must be a valid Sequence Ontology term.  [default: mRNA]"
  type: string
  inputBinding:
    prefix: --query_type
- id: match_on_name
  doc: Match features using their name instead of their uniquename
  type: boolean
  inputBinding:
    prefix: --match_on_name
- id: re_name
  doc: Regular expression to extract the feature name from the input file (first capturing
    group will be used).
  type: string
  inputBinding:
    prefix: --re_name
- id: skip_missing
  doc: Skip lines with unknown features or GO id instead of aborting everything.
  type: boolean
  inputBinding:
    prefix: --skip_missing
outputs: []
cwlVersion: v1.1
baseCommand:
- chakin
- expression
- add_expression
