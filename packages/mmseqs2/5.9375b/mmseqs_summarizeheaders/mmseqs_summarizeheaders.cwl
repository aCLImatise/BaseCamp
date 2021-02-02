class: CommandLineTool
id: mmseqs_summarizeheaders.cwl
inputs:
- id: in_header_type
  doc: '1               Header Type: 1 Uniclust, 2 Metaclust'
  type: boolean
  inputBinding:
    prefix: --header-type
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
- summarizeheaders
