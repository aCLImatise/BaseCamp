class: CommandLineTool
id: read_distribution.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File
  inputBinding:
    prefix: --input-file
- id: in_ref_gene
  doc: "Reference gene model in bed format.\n"
  type: string
  inputBinding:
    prefix: --refgene
- id: in_qc_failed
  doc: PCR duplicate
  type: string
  inputBinding:
    position: 0
- id: in_unmapped
  doc: 'Non-primary (or secondary)      '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- read_distribution.py
