class: CommandLineTool
id: bam2pairs.cwl
inputs:
- id: l
  doc: ": position is left-most position (default 5'end)."
  type: boolean
  inputBinding:
    prefix: -l
- id: chrom_size
  doc: ': chrom size file is provided to define mate ordering. (default alpha-numeric)'
  type: boolean
  inputBinding:
    prefix: --chromsize
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2pairs
