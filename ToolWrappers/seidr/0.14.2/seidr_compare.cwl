class: CommandLineTool
id: seidr_compare.cwl
inputs:
- id: in_network_one
  doc: Input SeidrFile for network A
  type: long?
  inputBinding:
    prefix: --network-1
- id: in_network_two
  doc: Input SeidrFile for network B
  type: long?
  inputBinding:
    prefix: --network-2
- id: in_arg_a_a
  doc: '[ --index-a ] arg (=last score)  Merge scores on this index for network A'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_network_b
  doc: '[ --index-b ] arg (=last score)  Merge scores on this index for network B'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_arg_translate_node
  doc: "[ --translate ] arg              Translate node names in network A\naccording\
    \ to this table"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_print_overlap_nodes
  doc: '[ --nodes ]                      Print overlap of nodes instead of edges'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_force_overwrite_output
  doc: '[ --force ]                      Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outfile ] arg (=-)           Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)        Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                      Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_o
  doc: "[ --outfile ] arg (=-)           Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- compare
