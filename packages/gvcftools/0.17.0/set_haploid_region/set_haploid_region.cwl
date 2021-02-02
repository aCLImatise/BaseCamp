class: CommandLineTool
id: set_haploid_region.cwl
inputs:
- id: in_region_file
  doc: "A bed file specifying the regions to be converted\n(required)"
  type: File
  inputBinding:
    prefix: --region-file
- id: in_ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- set_haploid_region
