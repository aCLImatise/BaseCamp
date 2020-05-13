class: CommandLineTool
id: set_haploid_region.cwl
inputs:
- id: region_file
  doc: A bed file specifying the regions to be converted  (required)
  type: string
  inputBinding:
    prefix: --region-file
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- set_haploid_region
