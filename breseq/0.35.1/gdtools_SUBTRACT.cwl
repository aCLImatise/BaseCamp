class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdtools_SUBTRACT.cwl
inputs:
- id: output
  doc: output GD file (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: phylogeny_aware
  doc: Check the optional 'phylogeny_id' field when deciding if entries are equivalent
  type: boolean
  inputBinding:
    prefix: --phylogeny-aware
- id: frequency_aware
  doc: Use the frequencies of mutations when performing the subtraction. Normally
    an input mutation is removed if it appears at any frequency in a subtracted file.
    In this mode its frequency is reduced by the frequency in each subtracted file.
    If the resulting frequency is zero or below, then the mutation is removed.
  type: boolean
  inputBinding:
    prefix: --frequency-aware
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- SUBTRACT
