class: CommandLineTool
id: bgt_import.cwl
inputs:
- id: in_input_is_vcf
  doc: input is VCF
  type: boolean
  inputBinding:
    prefix: -S
- id: in_list_reference_names
  doc: list of reference names and lengths [null]
  type: File
  inputBinding:
    prefix: -t
- id: in_keep_filtered_variants
  doc: keep filtered variants
  type: boolean
  inputBinding:
    prefix: -F
- id: in_generate_file_used
  doc: generate .pb1 file (not used for now)
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bgt
- import
