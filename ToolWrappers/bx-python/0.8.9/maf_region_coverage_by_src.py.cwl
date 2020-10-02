class: CommandLineTool
id: maf_region_coverage_by_src.py.cwl
inputs:
- id: in_src
  doc: Use this src for all intervals
  type: string
  inputBinding:
    prefix: --src
- id: in_prefix
  doc: "Prepend this to each src before lookup\n"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_maf_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_region_coverage_by_src.py
