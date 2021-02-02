class: CommandLineTool
id: ../../../bam2msa.cwl
inputs:
- id: in_region
  doc: "only include sequences in a certain REGION\n"
  type: string
  inputBinding:
    prefix: --region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2msa
