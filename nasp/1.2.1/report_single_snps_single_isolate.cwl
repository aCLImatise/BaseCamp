#!/usr/bin/env cwl-runner

baseCommand:
- report_single_snps_single_isolate.py
class: CommandLineTool
cwlVersion: v1.0
id: report_single_snps_single_isolate.py
inputs:
- doc: /path/to/NASP_matrix [REQUIRED]
  id: input_matrix
  inputBinding:
    prefix: --input_matrix
  type: string
- doc: genome to look for singleton SNPs [REQUIRED]
  id: genome_name
  inputBinding:
    prefix: --genome_name
  type: string
