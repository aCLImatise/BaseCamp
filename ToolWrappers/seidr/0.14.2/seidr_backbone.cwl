class: CommandLineTool
id: seidr_backbone.cwl
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
- id: in_arg_filter_subset
  doc: "[ --filter ] arg (=no filter)  Subset network to edges with at least this\n\
    SD. 1.28, 1.64, and 2.32 correspond to\n~P0.1, 0.05 and 0.01."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --out-file ] arg (=auto)     Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)      Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
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
  doc: "[ --out-file ] arg (=auto)     Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- backbone
