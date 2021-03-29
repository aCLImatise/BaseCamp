class: CommandLineTool
id: seidr_reheader.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)  Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- reheader
