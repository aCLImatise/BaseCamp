class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kaiju_mergeOutputs.cwl
inputs:
- id: name_first_input
  doc: Name of first input file
  type: File
  inputBinding:
    prefix: -i
- id: name_second_input
  doc: Name of second input file
  type: File
  inputBinding:
    prefix: -j
- id: name_output_file
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: conflict_resolution_mode
  doc: 'Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)'
  type: string
  inputBinding:
    prefix: -c
- id: name_nodesdmp_file
  doc: Name of nodes.dmp file, only required when -c is set to lca
  type: File
  inputBinding:
    prefix: -t
- id: use_th_column
  doc: Use 4th column with classification score to give precedence to taxon with better
    score.
  type: boolean
  inputBinding:
    prefix: -s
- id: enable_verbose_output
  doc: Enable verbose output, which will print a summary in the end.
  type: boolean
  inputBinding:
    prefix: -v
- id: enable_debug_output
  doc: Enable debug output.
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-mergeOutputs
