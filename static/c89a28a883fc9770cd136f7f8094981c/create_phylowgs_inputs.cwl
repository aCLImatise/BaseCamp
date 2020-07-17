class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/create_phylowgs_inputs.py.cwl
inputs:
- id: vcf_type
  doc: ''
  type: string
  inputBinding:
    prefix: --vcf-type
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: vcf_files
  doc: Path to VCF file for each sample. Specified as <sample>=<VCF path>.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- create_phylowgs_inputs.py
