class: CommandLineTool
id: taxa_assignment_report.py.cwl
inputs:
- id: tax_a_mapping_fp
  doc: Taxonomy mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --taxa_mapping_fp
- id: fast_a_fp
  doc: Fasta sequence file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- taxa_assignment_report.py
