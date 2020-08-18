class: CommandLineTool
id: ../../../bgt_import.cwl
inputs:
- id: input_is_vcf
  doc: input is VCF
  type: boolean
  inputBinding:
    prefix: -S
- id: list_reference_names
  doc: list of reference names and lengths [null]
  type: File
  inputBinding:
    prefix: -t
- id: keep_filtered_variants
  doc: keep filtered variants
  type: boolean
  inputBinding:
    prefix: -F
- id: generate_file_used
  doc: generate .pb1 file (not used for now)
  type: boolean
  inputBinding:
    prefix: '-1'
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- import
