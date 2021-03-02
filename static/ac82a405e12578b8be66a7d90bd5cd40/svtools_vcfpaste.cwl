class: CommandLineTool
id: svtools_vcfpaste.cwl
inputs:
- id: in_vcf_list
  doc: "file containing a line-delimited list of VCF files to\npaste (required)"
  type: File?
  inputBinding:
    prefix: --vcf-list
- id: in_master
  doc: "VCF file to set first 8 columns of variant info\n(otherwise first file in\
    \ --vcf-list)"
  type: File?
  inputBinding:
    prefix: --master
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File?
  inputBinding:
    prefix: --tempdir
- id: in_sum_quals
  doc: sum QUAL scores of input VCFs as output QUAL score
  type: boolean?
  inputBinding:
    prefix: --sum-quals
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtools
- vcfpaste
