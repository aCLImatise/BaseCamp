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
- id: in_one_file
  doc: "Single output file with \"region\" column. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --one_file
- id: in_stride
  doc: 'Stride in genomic coordinate. (default: 1000)'
  type: long?
  inputBinding:
    prefix: --stride
- id: in_summary_only
  doc: "Output only the depth_summary.txt file (default:\nFalse)"
  type: File?
  inputBinding:
    prefix: --summary_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_one_file
  doc: "Single output file with \"region\" column. (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_one_file)
- id: out_summary_only
  doc: "Output only the depth_summary.txt file (default:\nFalse)"
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_only)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- coverage_from_bam
