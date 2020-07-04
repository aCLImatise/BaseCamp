class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spacepharer_filtermatchbyfdr.cwl
inputs:
- id: fdr
  doc: FDR cutoff for filtering matches[0.0, 1.0] [0.050]
  type: double
  inputBinding:
    prefix: --fdr
- id: compressed
  doc: Write compressed output [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- spacepharer
- filtermatchbyfdr
