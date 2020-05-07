class: CommandLineTool
id: gsutil_setmeta.cwl
inputs:
- id: h
  doc: '"Content-Disposition" gs://bucket/*.html'
  type: boolean
  inputBinding:
    prefix: -h
- id: h
  doc: '"Content-Disposition" gs://bucket/*.html'
  type: boolean
  inputBinding:
    prefix: -h
- id: h
  doc: '"x-goog-meta-icecreamflavor:vanilla"'
  type: boolean
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- setmeta
