class: CommandLineTool
id: mmseqs_result2stats.cwl
inputs:
- id: in_stat
  doc: 'can be one of: linecount, mean, doolittle, charges, seqlen, firstline.'
  type: boolean
  inputBinding:
    prefix: --stat
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- result2stats
