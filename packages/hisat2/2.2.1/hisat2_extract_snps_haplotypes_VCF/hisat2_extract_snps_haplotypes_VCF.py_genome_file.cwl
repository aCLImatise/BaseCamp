class: CommandLineTool
id: hisat2_extract_snps_haplotypes_VCF.py_genome_file.cwl
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_VCF.py
- genome_file
