class: CommandLineTool
id: seidr_resolve.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_seidr_file
  doc: '[ --seidr-file ] arg         Seidr file which should be used to resolve'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_force_overwrite_output
  doc: '[ --force ]                  Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outfile ] arg (=-)       Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_input
  doc: -F [ --format ] arg (=infomap)  File format to resolve
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                  Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_o
  doc: "[ --outfile ] arg (=-)       Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- resolve
