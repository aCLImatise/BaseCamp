class: CommandLineTool
id: mapula_count.cwl
inputs:
- id: in__reference_files
  doc: '[ ...]   Reference .fasta file(s).'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_expected_counts_columns
  doc: 'Expected counts CSV. Required columns: reference,expected_count.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_enable_relay_stdout
  doc: Enable relay of input SAM records to stdout.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_aggregating_output_results
  doc: "If aggregating [-a], output results in this format. [Choices:\ncsv, json,\
    \ all] (Default: csv)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_change_aggregation_behaviour
  doc: "[ ...]  Change aggregation behaviour to split by these criteria, space\nseparated.\
    \ [Choices: source fasta run_id barcode read_group\nreference] (Default: all)."
  type: boolean?
  inputBinding:
    prefix: -s
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
- count
