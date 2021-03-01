class: CommandLineTool
id: vtools_stats.cwl
inputs:
- id: in_input
  doc: Input VCF file  [required]
  type: File?
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools-stats
