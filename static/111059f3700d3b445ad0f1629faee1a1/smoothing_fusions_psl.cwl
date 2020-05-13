class: CommandLineTool
id: smoothing_fusions_psl.py.cwl
inputs:
- id: input
  doc: The input file containing the reads alignments supporting potential fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: wiggle
  doc: The maximum size of the clipping done in the alignment gaps of the reads. Default
    is '3'.
  type: string
  inputBinding:
    prefix: --wiggle
- id: output
  doc: The output file containing reads alignments suporting potential fusion genes,
    such that the split reads are overlapping more.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- smoothing_fusions_psl.py
