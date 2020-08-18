class: CommandLineTool
id: ../../../mmseqs_translatenucs.cwl
inputs:
- id: add_orf_stop
  doc: 'false           add * at complete start and end                             '
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- translatenucs
