class: CommandLineTool
id: hisat2_extract_snps_haplotypes_UCSC.py_snp_fname.cwl
inputs:
- id: in_inter_gap
  doc: ''
  type: string?
  inputBinding:
    prefix: --inter-gap
- id: in_his_at_two_extract_snps_haplotypes_ucsc_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_UCSC.py
- snp_fname
