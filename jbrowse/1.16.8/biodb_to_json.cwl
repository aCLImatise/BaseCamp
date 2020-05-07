class: CommandLineTool
id: biodb_to_json.pl.cwl
inputs:
- id: out
  doc: 'Directory where output should go. Default: data/'
  type: string
  inputBinding:
    prefix: --out
- id: compress
  doc: If passed, compress the output with gzip (requires some web server configuration
    to serve properly).
  type: boolean
  inputBinding:
    prefix: --compress
outputs: []
cwlVersion: v1.1
baseCommand:
- biodb-to-json.pl
