class: CommandLineTool
id: spacepharer_filtermatchbyfdr.cwl
inputs:
- id: in_fdr
  doc: FDR cutoff for filtering matches[0.0, 1.0] [0.050]
  type: double
  inputBinding:
    prefix: --fdr
- id: in_compressed
  doc: Write compressed output [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- spacepharer
- filtermatchbyfdr
