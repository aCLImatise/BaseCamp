class: CommandLineTool
id: kreport2krona.py.cwl
inputs:
- id: report_file
  doc: Input kraken report file for converting
  type: string
  inputBinding:
    prefix: --report-file
- id: output
  doc: Output krona-report file name
  type: string
  inputBinding:
    prefix: --output
- id: intermediate_ranks
  doc: Include non-traditional taxonomic ranks in output
  type: boolean
  inputBinding:
    prefix: --intermediate-ranks
- id: no_intermediate_ranks
  doc: 'Do not include non-traditional taxonomic ranks in output [default: no intermediate
    ranks]'
  type: boolean
  inputBinding:
    prefix: --no-intermediate-ranks
outputs: []
cwlVersion: v1.1
baseCommand:
- kreport2krona.py
