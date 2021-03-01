class: CommandLineTool
id: kaiju_mergeOutputs.cwl
inputs:
- id: in_name_first_input
  doc: Name of first input file
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_second_input
  doc: Name of second input file
  type: File?
  inputBinding:
    prefix: -j
- id: in_name_output_file
  doc: Name of output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_conflict_resolution_mode
  doc: 'Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_name_nodesdmp_file
  doc: Name of nodes.dmp file, only required when -c is set to lca
  type: File?
  inputBinding:
    prefix: -t
- id: in_use_th_column
  doc: Use 4th column with classification score to give precedence to taxon with better
    score.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_enable_verbose_output
  doc: Enable verbose output, which will print a summary in the end.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_enable_debug_output
  doc: Enable debug output.
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kaiju:1.7.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- kaiju-mergeOutputs
