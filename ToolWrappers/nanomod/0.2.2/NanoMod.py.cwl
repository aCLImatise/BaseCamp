class: CommandLineTool
id: NanoMod.py.cwl
inputs:
- id: in_detect
  doc: Detect nucleotide modifications from nanopore signal data
  type: string
  inputBinding:
    position: 0
- id: in_simulate
  doc: Simulate with different percentage of modifications
  type: string
  inputBinding:
    position: 1
- id: in_simul_at_two
  doc: Simulate with different percentage of modifications
  type: long
  inputBinding:
    position: 2
- id: in_downsampling
  doc: Simulate with DownSampling from a folder
  type: string
  inputBinding:
    position: 3
- id: in_annotate
  doc: Annotate a known sequence using each fast5
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NanoMod.py
