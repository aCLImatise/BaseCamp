#!/usr/bin/env cwl-runner

baseCommand:
- scalpel-export
class: CommandLineTool
cwlVersion: v1.0
id: scalpel-export
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 1
  type: string
- doc: ': verbose mode'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: ': export variants for single exome study '
  id: single
  inputBinding:
    prefix: --single
  type: boolean
- doc: ': export variants for family study (mom,dad,affected,sibling)'
  id: de_novo
  inputBinding:
    prefix: --denovo
  type: boolean
- doc: ': export variants for normal/tumor study'
  id: somatic
  inputBinding:
    prefix: --somatic
  type: boolean
