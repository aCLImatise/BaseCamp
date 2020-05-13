class: CommandLineTool
id: rename.cwl
inputs:
- id: a
  doc: /--append=str
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: /--prepend=str
  type: boolean
  inputBinding:
    prefix: -A
- id: c
  doc: /--lower-case
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: /--upper-case
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: /--delete=str
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: /--delete-all=str
  type: boolean
  inputBinding:
    prefix: -D
- id: e
  doc: /--expr=code
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: /--pipe=cmd
  type: boolean
  inputBinding:
    prefix: -P
- id: s
  doc: /--subst from to
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: /--subst-all from to
  type: boolean
  inputBinding:
    prefix: -S
- id: x
  doc: /--remove-extension
  type: boolean
  inputBinding:
    prefix: -x
- id: x
  doc: /--keep-extension
  type: boolean
  inputBinding:
    prefix: -X
- id: z
  doc: /--sanitize
  type: boolean
  inputBinding:
    prefix: -z
- id: camelcase
  doc: (see manual)
  type: boolean
  inputBinding:
    prefix: --camelcase
outputs: []
cwlVersion: v1.1
baseCommand:
- rename
