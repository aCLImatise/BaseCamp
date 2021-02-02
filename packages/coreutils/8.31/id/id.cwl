class: CommandLineTool
id: id.cwl
inputs:
- id: in_ignore_compatibility_other
  doc: ignore, for compatibility with other versions
  type: boolean
  inputBinding:
    prefix: -a
- id: in_context
  doc: print only the security context of the process
  type: boolean
  inputBinding:
    prefix: --context
- id: in_group
  doc: print only the effective group ID
  type: boolean
  inputBinding:
    prefix: --group
- id: in_groups
  doc: print all group IDs
  type: boolean
  inputBinding:
    prefix: --groups
- id: in_name
  doc: print a name instead of a number, for -ugG
  type: boolean
  inputBinding:
    prefix: --name
- id: in_real
  doc: print the real ID instead of the effective ID, with -ugG
  type: boolean
  inputBinding:
    prefix: --real
- id: in_user
  doc: print only the effective user ID
  type: boolean
  inputBinding:
    prefix: --user
- id: in_delimit_entries_permitted
  doc: "delimit entries with NUL characters, not whitespace;\nnot permitted in default\
    \ format"
  type: boolean
  inputBinding:
    prefix: --zero
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- id
