class: CommandLineTool
id: seidr_adjacency.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_last_index
  doc: '[ --index ] arg (=last index)  Score index to use'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_print_matrix_diagonal
  doc: '[ --diagonal ]                 Print matrix diagonal for triangular output'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_arg_fill_character
  doc: '[ --missing ] arg (=0)         Fill character for missing edges'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_number_report
  doc: '[ --precision ] arg (=8)       Number of significant digits to report'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --out-file ] arg (=-)        Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_format
  doc: -F [ --fmt ] arg (=m)             Output format ['m','lm']
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_o
  doc: "[ --out-file ] arg (=-)        Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- adjacency
