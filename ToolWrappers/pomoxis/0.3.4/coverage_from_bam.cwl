class: CommandLineTool
id: coverage_from_bam.cwl
inputs:
- id: in_regions
  doc: 'Only process given regions. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_prefix
  doc: "Prefix for output, defaults to basename of bam.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_stride
  doc: 'Stride in genomic coordinate. (default: 1000)'
  type: long?
  inputBinding:
    prefix: --stride
- id: in_summary_only
  doc: "Output only the depth_summary.txt file (default:\nFalse)\n"
  type: File?
  inputBinding:
    prefix: --summary_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_summary_only
  doc: "Output only the depth_summary.txt file (default:\nFalse)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_only)
hints: []
cwlVersion: v1.1
baseCommand:
- coverage_from_bam
