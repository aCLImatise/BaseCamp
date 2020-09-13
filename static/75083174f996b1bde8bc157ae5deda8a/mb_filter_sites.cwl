class: CommandLineTool
id: ../../../mb_filter_sites.cwl
inputs:
- id: in_padding_bp
  doc: bp added to the annotation start and ends
  type: string
  inputBinding:
    prefix: --padding_bp
- id: in_filter_features
  doc: "comma separated list of gff features\n"
  type: string[]
  inputBinding:
    prefix: --filter_features
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-filter-sites
