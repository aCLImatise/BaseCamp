class: CommandLineTool
id: cnx.py.cwl
inputs:
- id: input
  doc: Input VCF file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file name (json format)
  type: string
  inputBinding:
    prefix: --output
- id: bam
  doc: pass a BAM file for aligner name/version extraction
  type: string
  inputBinding:
    prefix: --bam
outputs: []
cwlVersion: v1.1
baseCommand:
- cnx.py
