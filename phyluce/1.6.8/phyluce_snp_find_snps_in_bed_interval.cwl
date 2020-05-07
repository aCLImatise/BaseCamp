class: CommandLineTool
id: phyluce_snp_find_snps_in_bed_interval.cwl
inputs:
- id: uce
  doc: The UCE BED file
  type: string
  inputBinding:
    prefix: --uce
- id: snp
  doc: The SNP intersection BED file
  type: string
  inputBinding:
    prefix: --snp
- id: output
  doc: The output file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_find_snps_in_bed_interval
