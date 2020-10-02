class: CommandLineTool
id: hisat2_extract_snps_haplotypes_VCF.py_base_fname.cwl
inputs:
- id: in_his_at_two_extract_snps_haplotypes_vcf_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_VCF.py
- base_fname
