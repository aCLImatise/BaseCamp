class: CommandLineTool
id: mcxrand.cwl
inputs:
- id: in_print_this_help
  doc: print this help
  type: boolean
  inputBinding:
    prefix: -h
- id: in_output_matrix_fname
  doc: output matrix to <fname>
  type: string
  inputBinding:
    prefix: -o
- id: in_write_binary
  doc: write binary format
  type: boolean
  inputBinding:
    prefix: --write-binary
- id: in_imx
  doc: input matrix
  type: string
  inputBinding:
    prefix: -imx
- id: in_icl
  doc: input clustering (shuffled version will be output)
  type: string
  inputBinding:
    prefix: -icl
- id: in_gen
  doc: node count
  type: long
  inputBinding:
    prefix: -gen
- id: in_add
  doc: add <num> edges not yet present
  type: long
  inputBinding:
    prefix: -add
- id: in_shuffle
  doc: shuffle edge, repeat <num> times
  type: long
  inputBinding:
    prefix: -shuffle
- id: in_pa
  doc: /<m>          create graph with V nodes using preferential attachment, m edges
    per step
  type: string
  inputBinding:
    prefix: -pa
- id: in_remove
  doc: remove <num> edges
  type: long
  inputBinding:
    prefix: -remove
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mcxrand
