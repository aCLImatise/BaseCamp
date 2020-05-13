class: CommandLineTool
id: vtools_show.cwl
inputs:
- id: items
  doc: Items to display, which can be, for example, name of table for type 'table',
    conditions to select samples for type 'samples', a list of phenotypes for type
    'phenotypes', name of an annotation database for type 'annotation', a pattern
    to selected annotation databases for type 'annotations', name of a format for
    type 'format', and name of an association test for type 'test'.
  type: string
  inputBinding:
    position: 0
- id: limit
  doc: Limit output to the first N records.
  type: string
  inputBinding:
    prefix: --limit
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- show
