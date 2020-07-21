class: CommandLineTool
id: ../../../bam2msa.cwl
inputs:
- id: region
  doc: only include sequences in a certain REGION
  type: string
  inputBinding:
    prefix: --region
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2msa
