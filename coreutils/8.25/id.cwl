class: CommandLineTool
id: id.cwl
inputs:
- id: a
  doc: ignore, for compatibility with other versions
  type: boolean
  inputBinding:
    prefix: -a
- id: context
  doc: print only the security context of the process
  type: boolean
  inputBinding:
    prefix: --context
- id: group
  doc: print only the effective group ID
  type: boolean
  inputBinding:
    prefix: --group
- id: groups
  doc: print all group IDs
  type: boolean
  inputBinding:
    prefix: --groups
- id: name
  doc: print a name instead of a number, for -ugG
  type: boolean
  inputBinding:
    prefix: --name
- id: real
  doc: print the real ID instead of the effective ID, with -ugG
  type: boolean
  inputBinding:
    prefix: --real
- id: user
  doc: print only the effective user ID
  type: boolean
  inputBinding:
    prefix: --user
- id: zero
  doc: delimit entries with NUL characters, not whitespace; not permitted in default
    format
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- id
