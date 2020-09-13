class: CommandLineTool
id: ../../../radsex_signif.cwl
inputs:
- id: in_markers_table
  doc: TEXT:FILE                 Path to a marker depths table generated by "process"                                                                      [REQUIRED]
  type: boolean
  inputBinding:
    prefix: --markers-table
- id: in_pop_map
  doc: TEXT:FILE                 Path to a tabulated file specifying groups for all
    individuals (population map)                                           [REQUIRED]
  type: boolean
  inputBinding:
    prefix: --popmap
- id: in_output_file
  doc: TEXT                      Path to the output file (marker depths table or fasta
    file for markers significantly associated with phenotypic group)    [REQUIRED]
  type: File
  inputBinding:
    prefix: --output-file
- id: in_min_depth
  doc: UINT:INT in [1 - 9999]    Minimum depth to consider a marker present in an
    individual                                                               [1]
  type: boolean
  inputBinding:
    prefix: --min-depth
- id: in_groups
  doc: TEXT                      Names of the groups to compare if there are more
    than two groups in the popmap (--groups group1,group2)
  type: boolean
  inputBinding:
    prefix: --groups
- id: in_sign_if_threshold
  doc: FLOAT:FLOAT in [0 - 1]    P-value threshold to consider a marker significantly
    associated with a phenotypic group                                   [0.05]
  type: boolean
  inputBinding:
    prefix: --signif-threshold
- id: in_disable_correction
  doc: If set, Bonferroni correction will NOT be used when assessing significance
    of association with phenotypic group
  type: boolean
  inputBinding:
    prefix: --disable-correction
- id: in_output_fast_a
  doc: If set, markers will be output in fasta format instead of table format
  type: boolean
  inputBinding:
    prefix: --output-fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT                      Path to the output file (marker depths table or fasta
    file for markers significantly associated with phenotypic group)    [REQUIRED]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- radsex
- signif
