class: CommandLineTool
id: report_single_snps_single_isolate.py.cwl
inputs:
- id: input_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_matrix
- id: genome_name
  doc: genome to look for singleton SNPs [REQUIRED]
  type: string
  inputBinding:
    prefix: --genome_name
outputs: []
cwlVersion: v1.1
baseCommand:
- report_single_snps_single_isolate.py
