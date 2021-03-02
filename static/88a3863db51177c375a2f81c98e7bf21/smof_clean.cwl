class: CommandLineTool
id: smof_clean.cwl
inputs:
- id: in__type_type
  doc: '|p, --type n|p    sequence type'
  type: string?
  inputBinding:
    prefix: -t
- id: in_to_upper
  doc: convert to uppercase
  type: boolean?
  inputBinding:
    prefix: --toupper
- id: in_to_lower
  doc: convert to lowercase
  type: boolean?
  inputBinding:
    prefix: --tolower
- id: in_to_seq
  doc: removes all non-letter characters (gaps, stops, etc.)
  type: boolean?
  inputBinding:
    prefix: --toseq
- id: in_reduce_header
  doc: "Remove all text from header that follows the first\nword (delimited by [ |])"
  type: boolean?
  inputBinding:
    prefix: --reduce-header
- id: in_mask_irregular
  doc: converts irregular letters to unknown
  type: boolean?
  inputBinding:
    prefix: --mask-irregular
- id: in_mask_lowercase
  doc: convert lower-case to unknown
  type: boolean?
  inputBinding:
    prefix: --mask-lowercase
- id: in_col_width
  doc: width of the sequence output (0 indicates no wrapping)
  type: long?
  inputBinding:
    prefix: --col_width
- id: in_standardize
  doc: Convert 'X' in DNA to 'N' and '[._]' to '-' (for gaps)
  type: boolean?
  inputBinding:
    prefix: --standardize
- id: in_input
  doc: input fasta sequence (default = stdin)
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
- smof
- clean
