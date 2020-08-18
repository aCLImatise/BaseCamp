class: CommandLineTool
id: ../../../hisat2_extract_snps_haplotypes_UCSC.py_base_fname.cwl
inputs:
- id: inter_gap
  doc: ''
  type: long
  inputBinding:
    prefix: --inter-gap
- id: his_at_two_extract_snps_haplotypes_ucsc_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_UCSC.py
- base_fname
