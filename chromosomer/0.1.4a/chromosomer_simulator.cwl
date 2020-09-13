class: CommandLineTool
id: ../../../chromosomer_simulator.cwl
inputs:
- id: in_gap_size
  doc: the size of gaps between fragments on a chromosome
  type: long
  inputBinding:
    prefix: --gap_size
- id: in_unplaced
  doc: the number of unplaced fragments
  type: long
  inputBinding:
    prefix: --unplaced
- id: in_prefix
  doc: the prefix for output file names
  type: File
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: the prefix for output file names
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- chromosomer
- simulator
