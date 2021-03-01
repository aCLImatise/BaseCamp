class: CommandLineTool
id: plastome_arch_info.py.cwl
inputs:
- id: in_output_file
  doc: output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_minimum_repeat_length
  doc: "The minimum repeat length treated as the IR region of\nplastome. Default:\
    \ [5000]"
  type: long?
  inputBinding:
    prefix: -r
- id: in_valid_bases_atgcrmykhbdvatgcrmykhbdv
  doc: 'Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv'
  type: string?
  inputBinding:
    prefix: -v
- id: in_fast_a_format_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- plastome_arch_info.py
