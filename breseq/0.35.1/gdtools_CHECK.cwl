class: CommandLineTool
id: gdtools_CHECK.cwl
inputs:
- id: output
  doc: output GD file (DEFAULT=comp.gd)
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: file containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: evidence
  doc: compare evidence
  type: boolean
  inputBinding:
    prefix: --evidence
- id: jc_buffer
  doc: when comparing JC evidence, length of sequence segment to compare for JC evidence
    (DEFAULT=50)
  type: string
  inputBinding:
    prefix: --jc-buffer
- id: jc_shorten
  doc: when comparing JC evidence, length to shorten control segments by when comparing
    JC evidence for overlap (DEFAULT=5)
  type: string
  inputBinding:
    prefix: --jc-shorten
- id: jc_only_accepted
  doc: when comparing JC evidence, do not score/count rejected items
  type: boolean
  inputBinding:
    prefix: --jc-only-accepted
- id: plot_jc
  doc: plot JC Precision versus Score, argument is a prefix for the file paths
  type: string
  inputBinding:
    prefix: --plot-jc
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- CHECK
