class: CommandLineTool
id: ../../../checkTableCoords.cwl
inputs:
- id: in_table
  doc: 'Check this table only.  (Default: all tables)'
  type: string
  inputBinding:
    prefix: -table
- id: in_days_old
  doc: Check tables that have been modified at most N days ago.
  type: string
  inputBinding:
    prefix: -daysOld
- id: in_hours_old
  doc: "Check tables that have been modified at most N hours ago.\n(days and hours\
    \ are additive)"
  type: string
  inputBinding:
    prefix: -hoursOld
- id: in_exclude
  doc: Exclude tables matching any pattern in comma-separated
  type: string
  inputBinding:
    prefix: -exclude
- id: in_ignore_blocks
  doc: To save time (but lose coverage), skip block coord checks.
  type: boolean
  inputBinding:
    prefix: -ignoreBlocks
- id: in_verbose_blocks
  doc: "Print out more details about illegal block coords, since\nthey can't be found\
    \ by simple SQL queries.\n"
  type: boolean
  inputBinding:
    prefix: -verboseBlocks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkTableCoords
