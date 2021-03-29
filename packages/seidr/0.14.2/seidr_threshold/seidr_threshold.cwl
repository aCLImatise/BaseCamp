class: CommandLineTool
id: seidr_threshold.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_lowest_threshold
  doc: '[ --min ] arg (=0)             Lowest threshold value to check'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_highest_threshold
  doc: '[ --max ] arg (=0)             Highest threshold value to check'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_arg_last_score
  doc: '[ --index ] arg (=last score)  Score column to use as edge weights'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_number_create
  doc: '[ --nsteps ] arg (=100)        Number of breaks to create for testing'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_number_print
  doc: '[ --precision ] arg (=8)       Number of decimal points to print'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_number_openmp
  doc: '[ --threads ] arg (=1)         Number of OpenMP threads for parallel'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_var_8
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_sorting
  doc: 'Common Options:'
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
- id: out_var_8
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_var_8)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- threshold
