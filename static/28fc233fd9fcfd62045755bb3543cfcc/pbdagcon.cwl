class: CommandLineTool
id: pbdagcon.cwl
inputs:
- id: in_verbose
  doc: Turns on verbose logging
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_align
  doc: Align sequences before adding to consensus
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_trim
  doc: Trim alignments on either size
  type: long?
  inputBinding:
    prefix: --trim
- id: in_min_length
  doc: Minimum length for correction
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_coverage
  doc: Minimum coverage for correction
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_threads
  doc: Number of consensus threads
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbdagcon
