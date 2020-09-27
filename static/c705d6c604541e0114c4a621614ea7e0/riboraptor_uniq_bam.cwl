class: CommandLineTool
id: riboraptor_uniq_bam.cwl
inputs:
- id: in_in_bam
  doc: '[required]'
  type: string
  inputBinding:
    prefix: --inbam
- id: in_out_bam
  doc: '[required]'
  type: string
  inputBinding:
    prefix: --outbam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- riboraptor
- uniq-bam
