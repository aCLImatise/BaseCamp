class: CommandLineTool
id: break_point_inspector.cwl
inputs:
- id: in_contamination_fraction
  doc: "fraction of allowable normal support per\ntumor support read"
  type: string?
  inputBinding:
    prefix: -contamination_fraction
- id: in_output_vcf
  doc: VCF output file (optional)
  type: File?
  inputBinding:
    prefix: -output_vcf
- id: in_proximity
  doc: "distance to scan around breakpoint\n(optional, default=500)"
  type: long?
  inputBinding:
    prefix: -proximity
- id: in_ref
  doc: the Reference BAM (required)
  type: string?
  inputBinding:
    prefix: -ref
- id: in_ref_slice
  doc: "the sliced Reference BAM to output\n(optional)"
  type: string?
  inputBinding:
    prefix: -ref_slice
- id: in_tumor
  doc: the Tumor BAM (required)
  type: string?
  inputBinding:
    prefix: -tumor
- id: in_tumor_slice
  doc: the sliced Tumor BAM to output (optional)
  type: string?
  inputBinding:
    prefix: -tumor_slice
- id: in_vcf
  doc: "Manta VCF file to batch inspect\n(required)\n"
  type: File?
  inputBinding:
    prefix: -vcf
- id: in_arg
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: VCF output file (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- break-point-inspector
