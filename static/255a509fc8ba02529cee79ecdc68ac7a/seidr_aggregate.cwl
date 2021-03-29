class: CommandLineTool
id: seidr_aggregate.cwl
inputs:
- id: in_in_file
  doc: Input files
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_irp_method
  doc: "[ --method ] arg (=irp)            Method to aggregate networks [top1,\ntop2,\
    \ borda, irp]"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_keep_directionality_information
  doc: '[ --keep ]                         Keep directionality information'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_number_openmp
  doc: '[ --threads ] arg (=1)             Number of OpenMP threads for parallel'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_force_overwrite_output
  doc: '[ --force ]                        Force overwrite output file if it'
  type: File?
  inputBinding:
    prefix: -f
- id: in_arg_aggregatedsf_output
  doc: '[ --outfile ] arg (=aggregated.sf) Output file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)          Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_sorting
  doc: 'Common Options:'
  type: string
  inputBinding:
    position: 0
- id: in_exists
  doc: -h [ --help ]                         Show this help message
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                        Force overwrite output file if it'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_arg_aggregatedsf_output
  doc: '[ --outfile ] arg (=aggregated.sf) Output file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_aggregatedsf_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- aggregate
