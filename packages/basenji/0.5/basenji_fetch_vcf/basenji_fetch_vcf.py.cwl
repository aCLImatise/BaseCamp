class: CommandLineTool
id: basenji_fetch_vcf.py.cwl
inputs:
- id: in_print_full_tables
  doc: "Print full tables describing all linked variants [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_ld
  doc: 'LD threshold to consider variant [Default: 0.5]'
  type: double?
  inputBinding:
    prefix: --ld
- id: in_population_code
  doc: Population code
  type: string?
  inputBinding:
    prefix: -p
- id: in_sad_h_five_path
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_fetch_vcf.py
