class: CommandLineTool
id: sccaller.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: bias
  doc: ''
  type: string
  inputBinding:
    prefix: --bias
- id: min_var
  doc: ''
  type: string
  inputBinding:
    prefix: --minvar
- id: mapq
  doc: ''
  type: string
  inputBinding:
    prefix: --mapq
- id: min_depth
  doc: ''
  type: string
  inputBinding:
    prefix: --min_depth
- id: rd
  doc: ''
  type: string
  inputBinding:
    prefix: --RD
- id: 'null'
  doc: ''
  type: string
  inputBinding:
    prefix: --null
- id: bulk
  doc: ''
  type: string
  inputBinding:
    prefix: --bulk
- id: bulk_min_depth
  doc: ''
  type: string
  inputBinding:
    prefix: --bulk_min_depth
- id: bulk_min_mapq
  doc: ''
  type: string
  inputBinding:
    prefix: --bulk_min_mapq
- id: bulk_min_var
  doc: ''
  type: string
  inputBinding:
    prefix: --bulk_min_var
- id: format
  doc: ''
  type: string
  inputBinding:
    prefix: --format
- id: head
  doc: ''
  type: string
  inputBinding:
    prefix: --head
- id: tail
  doc: ''
  type: string
  inputBinding:
    prefix: --tail
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: cpu_num
  doc: ''
  type: string
  inputBinding:
    prefix: --cpu_num
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaller
