class: CommandLineTool
id: bamtools_sort.cwl
inputs:
- id: sort_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: the output BAM file [stdout]
  type: string
  inputBinding:
    prefix: -out
- id: by_name
  doc: sort by alignment name
  type: boolean
  inputBinding:
    prefix: -byname
- id: n
  doc: max number of alignments per tempfile [500000]
  type: string
  inputBinding:
    prefix: -n
- id: mem
  doc: max memory to use [1024]
  type: string
  inputBinding:
    prefix: -mem
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- sort
