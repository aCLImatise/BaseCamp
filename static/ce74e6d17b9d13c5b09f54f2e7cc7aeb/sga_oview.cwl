class: CommandLineTool
id: sga_oview.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: id
  doc: only show overlaps for read with ID
  type: string
  inputBinding:
    prefix: --id
- id: max_overhang
  doc: 'only show D overhanging bases of the alignments (default: 6)'
  type: string
  inputBinding:
    prefix: --max-overhang
- id: default_padding
  doc: 'pad the overlap lines with D characters (default: 20)'
  type: string
  inputBinding:
    prefix: --default-padding
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- oview
