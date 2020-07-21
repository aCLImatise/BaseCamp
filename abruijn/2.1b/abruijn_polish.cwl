class: CommandLineTool
id: ../../../abruijn_polish.cwl
inputs:
- id: path_file_verbose
  doc: path to the file with verbose log [default = not set]
  type: string
  inputBinding:
    prefix: -v
- id: number_parallel_threads
  doc: number of parallel threads [default = 1]
  type: string
  inputBinding:
    prefix: -t
- id: bubbles_file
  doc: path to bubbles file
  type: string
  inputBinding:
    position: 0
- id: subs_matrix
  doc: path to substitution matrix
  type: string
  inputBinding:
    position: 1
- id: hop_o_matrix
  doc: path to homopolymer matrix
  type: string
  inputBinding:
    position: 2
- id: out_file
  doc: path to output file
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-polish
