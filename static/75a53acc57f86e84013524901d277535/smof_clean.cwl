class: CommandLineTool
id: smof_clean.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: t
  doc: '|p, --type n|p    sequence type'
  type: string
  inputBinding:
    prefix: -t
- id: to_upper
  doc: convert to uppercase
  type: boolean
  inputBinding:
    prefix: --toupper
- id: to_lower
  doc: convert to lowercase
  type: boolean
  inputBinding:
    prefix: --tolower
- id: to_seq
  doc: removes all non-letter characters (gaps, stops, etc.)
  type: boolean
  inputBinding:
    prefix: --toseq
- id: reduce_header
  doc: Remove all text from header that follows the first word (delimited by [ |])
  type: boolean
  inputBinding:
    prefix: --reduce-header
- id: mask_irregular
  doc: converts irregular letters to unknown
  type: boolean
  inputBinding:
    prefix: --mask-irregular
- id: mask_lowercase
  doc: convert lower-case to unknown
  type: boolean
  inputBinding:
    prefix: --mask-lowercase
- id: col_width
  doc: width of the sequence output (0 indicates no wrapping)
  type: string
  inputBinding:
    prefix: --col_width
- id: standardize
  doc: Convert 'X' in DNA to 'N' and '[._]' to '-' (for gaps)
  type: boolean
  inputBinding:
    prefix: --standardize
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- clean
