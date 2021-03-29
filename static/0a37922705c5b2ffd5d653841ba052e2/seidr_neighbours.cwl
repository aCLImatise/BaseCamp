class: CommandLineTool
id: seidr_neighbours.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_last_score
  doc: '[ --index ] arg (=last score)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_number_top
  doc: '[ --neighbours ] arg (=10)     Number of top first-degree neighbours to'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_use_rank_instead
  doc: '[ --rank ]                     Use rank instead of score'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_print_only_edges
  doc: '[ --unique ]                   Print only unique edges'
  type: boolean?
  inputBinding:
    prefix: -u
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
- id: in_fail_issues_warning
  doc: '[ --strict ]                   Fail on all issues instead of warning'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_search_case_insensitive
  doc: '[ --case-insensitive ]         Search case insensitive nodes'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_var_9
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_return
  doc: -g [ --genes ] arg                Gene names to search
  type: string
  inputBinding:
    position: 0
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
- id: out_var_9
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_var_9)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- neighbours
