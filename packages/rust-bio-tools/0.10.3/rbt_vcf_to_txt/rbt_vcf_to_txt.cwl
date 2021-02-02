class: CommandLineTool
id: rbt_vcf_to_txt.cwl
inputs:
- id: in_genotypes
  doc: Display genotypes.
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: in_fmt
  doc: '...     Select FORMAT tags.'
  type: string
  inputBinding:
    prefix: --fmt
- id: in_info
  doc: '...    Select INFO tags.'
  type: string
  inputBinding:
    prefix: --info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
