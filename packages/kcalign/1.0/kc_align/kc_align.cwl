class: CommandLineTool
id: kc_align.cwl
inputs:
- id: in_reference
  doc: Reference sequence
  type: string
  inputBinding:
    prefix: --reference
- id: in_sequences
  doc: Other sequences to align
  type: string
  inputBinding:
    prefix: --sequences
- id: in_start
  doc: 1-based start position (required in genome mode)
  type: long
  inputBinding:
    prefix: --start
- id: in_end
  doc: 1-based end position (required in genome mode)
  type: long
  inputBinding:
    prefix: --end
- id: in_mode
  doc: Alignment mode (genome, gene, or mixed) (required)
  type: string
  inputBinding:
    prefix: --mode
- id: in_compress
  doc: Compress identical sequences
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_parallel
  doc: Enable parallelization of homology search
  type: boolean
  inputBinding:
    prefix: --parallel
- id: in_table
  doc: "Choose alternative translation table (See https://www.\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\
    \ for\nvalues)"
  type: string
  inputBinding:
    prefix: --table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kc-align
