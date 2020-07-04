class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_paste.py.cwl
inputs:
- id: master
  doc: VCF file to set first 8 columns of variant info [first file in vcf_list]
  type: string
  inputBinding:
    prefix: --master
- id: sum_quals
  doc: Sum QUAL scores of input VCFs as output QUAL score
  type: boolean
  inputBinding:
    prefix: --sum_quals
- id: vcf_list
  doc: Line-delimited list of VCF files to paste
  type: string
  inputBinding:
    prefix: --vcf_list
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_paste.py
