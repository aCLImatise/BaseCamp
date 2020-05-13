class: CommandLineTool
id: bam2gtf.py.cwl
inputs:
- id: bam
  doc: Input BAM file
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Optional output file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2gtf.py
