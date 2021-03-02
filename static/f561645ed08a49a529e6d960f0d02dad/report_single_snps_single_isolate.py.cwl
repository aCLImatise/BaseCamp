class: CommandLineTool
id: report_single_snps_single_isolate.py.cwl
inputs:
- id: in_input_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: File?
  inputBinding:
    prefix: --input_matrix
- id: in_genome_name
  doc: "genome to look for singleton SNPs [REQUIRED]\n"
  type: string?
  inputBinding:
    prefix: --genome_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- report_single_snps_single_isolate.py
