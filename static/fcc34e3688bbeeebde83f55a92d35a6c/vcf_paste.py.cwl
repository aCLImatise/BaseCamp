class: CommandLineTool
id: vcf_paste.py.cwl
inputs:
- id: in_master
  doc: VCF file to set first 8 columns of variant info [first file in vcf_list]
  type: File?
  inputBinding:
    prefix: --master
- id: in_sum_quals
  doc: Sum QUAL scores of input VCFs as output QUAL score
  type: boolean?
  inputBinding:
    prefix: --sum_quals
- id: in_vcf_list
  doc: "Line-delimited list of VCF files to paste\n"
  type: string?
  inputBinding:
    prefix: --vcf_list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf_paste.py
