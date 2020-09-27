class: CommandLineTool
id: create_phylowgs_inputs.py.cwl
inputs:
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_vcf_type
  doc: ''
  type: string
  inputBinding:
    prefix: --vcf-type
- id: in_vcf_files
  doc: "Path to VCF file for each sample. Specified as\n<sample>=<VCF path>."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- create_phylowgs_inputs.py
