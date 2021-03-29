class: CommandLineTool
id: seidr_view.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_inf_edges
  doc: '[ --threshold ] arg (=-inf)    Only print edges with a weight >= t'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_threshold_edges_instead
  doc: '[ --threshold-rank ]           Threshold edges with a rank of <= t instead'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_last_score
  doc: '[ --index ] arg (=last score)  Score column to use as edge weights'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_supply_function
  doc: '[ --filter ] arg               Supply a filter function to select edges'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_arg_include_nodes
  doc: '[ --nodelist ] arg             Include only these nodes'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_view_only
  doc: '[ --lines ] arg                View only first l results'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_print_node_index
  doc: '[ --no-names ]                 Print node index instead of name'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_print_column_headers
  doc: '[ --column-headers ]           Print column headers'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_print_supplementary_information
  doc: '[ --tags ]                     Print supplementary information tags'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_print_much_information
  doc: "[ --dense ]                    Print as much information as possible for\n\
    each edge"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_arg_delimiter_supplementary
  doc: '[ --sc-delim ] arg (=;)        Delimiter for supplementary tags'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_delimiter_scoresranks
  doc: '[ --delim ] arg (=;)           Delimiter for scores/ranks'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_print_file_header
  doc: '[ --header ]                   Print file header as text'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_print_node_centrality
  doc: '[ --centrality ]               Print node centrality scores if present'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_o
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_binary_seidrfile
  doc: '[ --binary ]                   Output binary SeidrFile'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_search_case_insensitive
  doc: '[ --case-insensitive ]         Search case insensitive nodes'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)      Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
- id: out_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- view
