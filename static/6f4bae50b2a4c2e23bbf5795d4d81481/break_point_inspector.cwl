class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/break_point_inspector.cwl
inputs:
- id: contamination_fraction
  doc: fraction of allowable normal support per tumor support read
  type: string
  inputBinding:
    prefix: -contamination_fraction
- id: output_vcf
  doc: VCF output file (optional)
  type: string
  inputBinding:
    prefix: -output_vcf
- id: proximity
  doc: distance to scan around breakpoint (optional, default=500)
  type: string
  inputBinding:
    prefix: -proximity
- id: ref
  doc: the Reference BAM (required)
  type: string
  inputBinding:
    prefix: -ref
- id: ref_slice
  doc: the sliced Reference BAM to output (optional)
  type: string
  inputBinding:
    prefix: -ref_slice
- id: tumor
  doc: the Tumor BAM (required)
  type: string
  inputBinding:
    prefix: -tumor
- id: tumor_slice
  doc: the sliced Tumor BAM to output (optional)
  type: string
  inputBinding:
    prefix: -tumor_slice
- id: vcf
  doc: Manta VCF file to batch inspect (required)
  type: string
  inputBinding:
    prefix: -vcf
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- break-point-inspector
