class: CommandLineTool
id: ssu_cmstat.cwl
inputs:
- id: g
  doc: ': configure CM for glocal alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: ': only print one line summary of model statistics  [default]'
  type: boolean
  inputBinding:
    prefix: -m
- id: z
  doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  type: string
  inputBinding:
    prefix: -Z
- id: all
  doc: ': print model, E-value and filter thresholds stats'
  type: boolean
  inputBinding:
    prefix: --all
- id: le
  doc: ': only print one line summary of  local E-value statistics'
  type: boolean
  inputBinding:
    prefix: --le
- id: ge
  doc: ': only print one line summary of glocal E-value statistics'
  type: boolean
  inputBinding:
    prefix: --ge
- id: beta
  doc: ': set tail loss prob for QDB stats to <x>  [1E-7]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --beta
- id: qdb_file
  doc: ': save query-dependent bands (QDBs) for each state to file <f>'
  type: string
  inputBinding:
    prefix: --qdbfile
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmstat
