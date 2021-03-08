class: CommandLineTool
id: pmh_tr.cwl
inputs:
- id: in__t_leaflabeling
  doc: '[-t int] T leaf_labeling'
  type: long?
  inputBinding:
    prefix: -p
- id: in_optional_file_migration
  doc: Optional file with migration graphs
  type: File?
  inputBinding:
    prefix: -G
- id: in_old
  doc: Use old ILP (typically much slower)
  type: boolean?
  inputBinding:
    prefix: -OLD
- id: in_ub_gamma
  doc: 'Upper bound on the comigration number (default: -1, disabled)'
  type: long?
  inputBinding:
    prefix: -UB_gamma
- id: in_ub_mu
  doc: 'Upper bound on the migration number (default: -1, disabled)'
  type: long?
  inputBinding:
    prefix: -UB_mu
- id: in_ub_sigma
  doc: 'Upper bound on the seeding site number (default: -1, disabled)'
  type: long?
  inputBinding:
    prefix: -UB_sigma
- id: in_color_map_file
  doc: Color map file
  type: File?
  inputBinding:
    prefix: -c
- id: in_export_ilp
  doc: Export ILP
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_output_search_graph
  doc: Output search graph
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_time_limit_seconds
  doc: 'Time limit in seconds (default: -1, no time limit)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_log
  doc: Gurobi logging
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_allowed_migration_patterns
  doc: "Allowed migration patterns:\n0 : PS\n1 : PS, S\n2 : PS, S, M\n3 : PS, S, M,\
    \ R\nIf no pattern is specified, all allowed patterns will be\nenumerated (default:\
    \ '0,1,2,3')"
  type: long?
  inputBinding:
    prefix: -m
- id: in_output_prefix
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: "Number of threads (default: -1, #cores)\n"
  type: long?
  inputBinding:
    prefix: -t
- id: in_leaf_labeling
  doc: Leaf labeling
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- pmh_tr
