class: CommandLineTool
id: tadbit_describe.cwl
inputs:
- id: in_workdir
  doc: path to working directory (generated with the tool tadbit map)
  type: File?
  inputBinding:
    prefix: --workdir
- id: in_nox
  doc: no display server (X screen)
  type: boolean?
  inputBinding:
    prefix: --noX
- id: in_what_tables_show_write_sequence
  doc: "[ ...], --tables  [ ...]\n[['1', '2', '3', '4', '5', '6', '7', '8', '9', '10',\
    \ '11', '12',\n'13']] what tables to show, write either the sequence of names\
    \ or\nindexes, according to this list: 1: paths, 2: jobs, 3:\nmapped_outputs,\
    \ 4: mapped_inputs, 5: parsed_outputs, 6:\nintersection_outputs, 7: filter_outputs,\
    \ 8: normalize_outputs, 9:\nmerge_stats, 10: merge_outputs, 11: segment_outputs,\
    \ 12: models, 13:\nmodeled_regions"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_what_tables_show_write_orindexes
  doc: "[ ...], --skip_tables  [ ...]\n[[]] what tables NOT to show, write either\
    \ the sequence of names or\nindexes, according to this list: 1: paths, 2: jobs,\
    \ 3:\nmapped_outputs, 4: mapped_inputs, 5: parsed_outputs, 6:\nintersection_outputs,\
    \ 7: filter_outputs, 8: normalize_outputs, 9:\nmerge_stats, 10: merge_outputs,\
    \ 11: segment_outputs, 12: models, 13:\nmodeled_regions"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_job_ids
  doc: Display only items matching these jobids.
  type: long[]
  inputBinding:
    prefix: --jobids
- id: in_where
  doc: "Select rows. List pairs of keywords (column header) and values to\nfilter\
    \ results. For example to get only results where \"18\" appears\nin the column\
    \ \"Chromosome\", the option should be set as: `-W\nChromosome,18`"
  type: string[]
  inputBinding:
    prefix: --where
- id: in_select
  doc: "Select columns. List the keyword (column headers) to be displayed.\nE.g. to\
    \ show only the colmns JobIds: `-s Jobids`"
  type: string[]
  inputBinding:
    prefix: --select
- id: in_tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File?
  inputBinding:
    prefix: --tmpdb
- id: in_tsv
  doc: Print output in tab separated format
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_output
  doc: "Writes output in specified file.\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Writes output in specified file.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tadbit:1.0.1--py38h6ed170a_0
cwlVersion: v1.1
baseCommand:
- tadbit
- describe
