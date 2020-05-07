class: CommandLineTool
id: mmseqs_result2stats.cwl
inputs:
- id: stat
  doc: 'can be one of: linecount, mean, doolittle, charges, seqlen, firstline.'
  type: boolean
  inputBinding:
    prefix: --stat
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- result2stats
