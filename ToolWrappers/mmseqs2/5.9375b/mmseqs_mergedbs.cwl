class: CommandLineTool
id: mmseqs_mergedbs.cwl
inputs:
- id: in_prefixes
  doc: Comma separated list of prefixes for each entry
  type: boolean?
  inputBinding:
    prefix: --prefixes
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- mergedbs
