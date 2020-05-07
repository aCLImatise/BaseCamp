class: CommandLineTool
id: chromosomer_simulator.cwl
inputs:
- id: fr_num
  doc: the number of chromosome fragments
  type: string
  inputBinding:
    position: 0
- id: fr_len
  doc: the length of fragments
  type: string
  inputBinding:
    position: 1
- id: chr_num
  doc: the number of chromosomes
  type: string
  inputBinding:
    position: 2
- id: output_dir
  doc: the directory for output files
  type: string
  inputBinding:
    position: 3
- id: gap_size
  doc: the size of gaps between fragments on a chromosome
  type: string
  inputBinding:
    prefix: --gap_size
- id: unplaced
  doc: the number of unplaced fragments
  type: string
  inputBinding:
    prefix: --unplaced
- id: prefix
  doc: the prefix for output file names
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- simulator
