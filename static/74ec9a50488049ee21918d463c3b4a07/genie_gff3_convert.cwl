class: CommandLineTool
id: genie_gff3_convert.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: attributes
  doc: select attributes by key
  type: string
  inputBinding:
    prefix: --attributes
- id: end
  doc: select end
  type: boolean
  inputBinding:
    prefix: --end
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: header
  doc: hiding headers
  type: boolean
  inputBinding:
    prefix: --header
- id: limit
  doc: Output Limit (default -1)
  type: long
  inputBinding:
    prefix: --limit
- id: phase
  doc: select phase
  type: boolean
  inputBinding:
    prefix: --phase
- id: replacement
  doc: the replacement character if there is a blank value
  type: string
  inputBinding:
    prefix: --replacement
- id: score
  doc: select score
  type: boolean
  inputBinding:
    prefix: --score
- id: separator
  doc: the separator of each values (default "\t")
  type: string
  inputBinding:
    prefix: --separator
- id: seq_id
  doc: select seqid
  type: boolean
  inputBinding:
    prefix: --seqid
- id: source
  doc: select source
  type: boolean
  inputBinding:
    prefix: --source
- id: start
  doc: select start
  type: boolean
  inputBinding:
    prefix: --start
- id: strand
  doc: select strand
  type: boolean
  inputBinding:
    prefix: --strand
- id: type
  doc: select type
  type: boolean
  inputBinding:
    prefix: --type
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- gff3
- convert
