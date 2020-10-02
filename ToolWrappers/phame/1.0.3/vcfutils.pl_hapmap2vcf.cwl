class: CommandLineTool
id: vcfutils.pl_hapmap2vcf.cwl
inputs:
- id: in_vcf_utils_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_ucsc_dot_snp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_hapmap
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfutils.pl
- hapmap2vcf
