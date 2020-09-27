class: CommandLineTool
id: sga_oview.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_id
  doc: only show overlaps for read with ID
  type: string
  inputBinding:
    prefix: --id
- id: in_max_overhang
  doc: 'only show D overhanging bases of the alignments (default: 6)'
  type: long
  inputBinding:
    prefix: --max-overhang
- id: in_default_padding
  doc: 'pad the overlap lines with D characters (default: 20)'
  type: long
  inputBinding:
    prefix: --default-padding
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- oview
