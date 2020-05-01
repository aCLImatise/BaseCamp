#!/usr/bin/env cwl-runner

baseCommand:
- scalpel-discovery
class: CommandLineTool
cwlVersion: v1.0
id: scalpel-discovery
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
- doc: ': single exome study '
  id: single
  inputBinding:
    prefix: --single
  type: boolean
- doc: ': family study (mom,dad,affected,sibling)'
  id: de_novo
  inputBinding:
    prefix: --denovo
  type: boolean
- doc: ': normal/tumor study'
  id: somatic
  inputBinding:
    prefix: --somatic
  type: boolean
