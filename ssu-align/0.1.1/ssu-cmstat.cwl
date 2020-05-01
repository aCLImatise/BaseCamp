#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmstat
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmstat
inputs:
- doc: ': configure CM for glocal alignment [default: local]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': only print one line summary of model statistics  [default]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': print model, E-value and filter thresholds stats'
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: ': only print one line summary of  local E-value statistics'
  id: le
  inputBinding:
    prefix: --le
  type: boolean
- doc: ': only print one line summary of glocal E-value statistics'
  id: ge
  inputBinding:
    prefix: --ge
  type: boolean
- doc: ': set tail loss prob for QDB stats to <x>  [1E-7]  (0<x<1)'
  id: beta
  inputBinding:
    prefix: --beta
  type: string
- doc: ': save query-dependent bands (QDBs) for each state to file <f>'
  id: qdb_file
  inputBinding:
    prefix: --qdbfile
  type: string
