class: CommandLineTool
id: abruijn_polish.cwl
inputs:
- id: in_path_file_verbose
  doc: path to the file with verbose log [default = not set]
  type: File?
  inputBinding:
    prefix: -v
- id: in_number_parallel_threads
  doc: number of parallel threads [default = 1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_bubbles_file
  doc: path to bubbles file
  type: string
  inputBinding:
    position: 0
- id: in_subs_matrix
  doc: path to substitution matrix
  type: string
  inputBinding:
    position: 1
- id: in_hop_o_matrix
  doc: path to homopolymer matrix
  type: string
  inputBinding:
    position: 2
- id: in_out_file
  doc: path to output file
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abruijn-polish
