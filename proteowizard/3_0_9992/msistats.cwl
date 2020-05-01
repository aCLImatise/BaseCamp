#!/usr/bin/env cwl-runner

baseCommand:
- msistats
class: CommandLineTool
cwlVersion: v1.0
id: msistats
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: '[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --time ] arg (=10) : Window to use for finding nearest mz neighbors'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --out ] arg        : Name of file to write output to. '
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --verbose ]        : Be verbose.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': width for empty pixel analysis. Otherwise set to mz  option value'
  id: pm_z
  inputBinding:
    prefix: --pmz
  type: string
- doc: ': width for empty pixel analysis. Otherwise set to time option value'
  id: p_time
  inputBinding:
    prefix: --ptime
  type: string
