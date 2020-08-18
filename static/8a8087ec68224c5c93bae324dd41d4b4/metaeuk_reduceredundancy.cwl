class: CommandLineTool
id: ../../../metaeuk_reduceredundancy.cwl
inputs:
- id: overlap
  doc: allow predictions to overlap another on the same strand. when not allowed (default),
    only the prediction with better E-value will be retained [0,1] [0]
  type: long
  inputBinding:
    prefix: --overlap
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: compressed
  doc: Write compressed output [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- metaeuk
- reduceredundancy
