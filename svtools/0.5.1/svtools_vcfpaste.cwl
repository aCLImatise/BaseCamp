class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtools_vcfpaste.cwl
inputs:
- id: vcf_list
  doc: file containing a line-delimited list of VCF files to paste (required)
  type: File
  inputBinding:
    prefix: --vcf-list
- id: master
  doc: VCF file to set first 8 columns of variant info (otherwise first file in --vcf-list)
  type: string
  inputBinding:
    prefix: --master
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
- id: sum_quals
  doc: sum QUAL scores of input VCFs as output QUAL score
  type: boolean
  inputBinding:
    prefix: --sum-quals
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- vcfpaste
