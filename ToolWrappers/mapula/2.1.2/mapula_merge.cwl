class: CommandLineTool
id: mapula_merge.cwl
inputs:
- id: in_expected_counts_columns
  doc: 'Expected counts CSV. Required columns: reference,expected_count.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sets_formats_results
  doc: "Sets the format(s) in which to output results. [Choices: csv,\njson, all]\
    \ (Default: csv)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_prefix_there_are
  doc: Prefix of the output files, if there are any.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_map_ula
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapula:2.1.2--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- mapula
- merge
