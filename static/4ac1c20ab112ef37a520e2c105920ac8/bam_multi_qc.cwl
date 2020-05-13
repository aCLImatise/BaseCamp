class: CommandLineTool
id: bam_multi_qc.py.cwl
inputs:
- id: input_pickles
  doc: Input pickles.
  type: string
  inputBinding:
    position: 0
- id: r
  doc: Report PDF (bam_multi_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: x
  doc: Do not plot reference statistics.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_multi_qc.py
