class: CommandLineTool
id: kc_align.cwl
inputs:
- id: in_reference
  doc: Reference sequence
  type: string?
  inputBinding:
    prefix: --reference
- id: in_sequences
  doc: Other sequences to align
  type: string?
  inputBinding:
    prefix: --sequences
- id: in_start
  doc: 1-based start position (required in genome mode)
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: 1-based end position (required in genome mode)
  type: long?
  inputBinding:
    prefix: --end
- id: in_mode
  doc: Alignment mode (genome, gene, or mixed) (required)
  type: string?
  inputBinding:
    prefix: --mode
- id: in_compress
  doc: Compress identical sequences
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_table
  doc: "Choose alternative translation table (See https://www.\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\
    \ for\nvalues)"
  type: string?
  inputBinding:
    prefix: --table
- id: in_keep
  doc: "Keep translated pre-alignment sequences file named\npre_align.fasta, otherwise\
    \ will delete"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_dist
  doc: "For genome/mixed mode, determines the max distance a\nhomologous sequence\
    \ can be before it is discarded from\nthe alignment (default = none). Distance\
    \ limits: none\n< very-close < close < semi-close < less-close"
  type: string?
  inputBinding:
    prefix: --dist
- id: in_threads
  doc: "Number of simultaneous threads to use (must be a\nmultiple of 3)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kcalign:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- kc-align
