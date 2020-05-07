class: CommandLineTool
id: tadbit_describe.cwl
inputs:
- id: workdir
  doc: path to working directory (generated with the tool tadbit map)
  type: File
  inputBinding:
    prefix: --workdir
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: t
  doc: "[ ...], --tables  [ ...] [['1', '2', '3', '4', '5', '6', '7', '8', '9', '10',\
    \ '11', '12', '13']] what tables to show, write either the sequence of names or\
    \ indexes, according to this list: 11: segment_outputs, 10: merge_outputs, 13:\
    \ modeled_regions, 12: models, 1: paths, 3: mapped_outputs, 2: jobs, 5: parsed_outputs,\
    \ 4: mapped_inputs, 7: filter_outputs, 6: intersection_outputs, 9: merge_stats,\
    \ 8: normalize_outputs"
  type: boolean
  inputBinding:
    prefix: -t
- id: t
  doc: '[ ...], --skip_tables  [ ...] [[]] what tables NOT to show, write either the
    sequence of names or indexes, according to this list: 11: segment_outputs, 10:
    merge_outputs, 13: modeled_regions, 12: models, 1: paths, 3: mapped_outputs, 2:
    jobs, 5: parsed_outputs, 4: mapped_inputs, 7: filter_outputs, 6: intersection_outputs,
    9: merge_stats, 8: normalize_outputs'
  type: boolean
  inputBinding:
    prefix: -T
- id: job_ids
  doc: Display only items matching these jobids.
  type: long[]
  inputBinding:
    prefix: --jobids
- id: where
  doc: 'Select rows. List pairs of keywords (column header) and values to filter results.
    For example to get only results where "18" appears in the column "Chromosome",
    the option should be set as: `-W Chromosome,18`'
  type: string[]
  inputBinding:
    prefix: --where
- id: select
  doc: 'Select columns. List the keyword (column headers) to be displayed. E.g. to
    show only the colmns JobIds: `-s Jobids`'
  type: string[]
  inputBinding:
    prefix: --select
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: tsv
  doc: Print output in tab separated format
  type: boolean
  inputBinding:
    prefix: --tsv
- id: output
  doc: Writes output in specified file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- describe
