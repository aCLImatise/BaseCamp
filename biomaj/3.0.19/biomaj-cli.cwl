#!/usr/bin/env cwl-runner

baseCommand:
- biomaj-cli.py
class: CommandLineTool
cwlVersion: v1.0
id: biomaj-cli.py
inputs:
- doc: ': name of the bank to update'
  id: bank
  inputBinding:
    prefix: --bank
  type: string
- doc: ': release of the bank to remove'
  id: release
  inputBinding:
    prefix: --release
  type: string
- doc: ': basic search in bank production releases, return list of banks'
  id: search
  inputBinding:
    prefix: --search
  type: boolean
- doc: ',yy : list of comma separated format'
  id: formats
  inputBinding:
    prefix: --formats
  type: string
- doc: ',yy : list of comma separated type'
  id: types
  inputBinding:
    prefix: --types
  type: string
- doc: '"LUCENE query syntax": search in index (if activated)'
  id: query
  inputBinding:
    prefix: --query
  type: boolean
- doc: ': Show bank files per format'
  id: show
  inputBinding:
    prefix: --show
  type: boolean
- doc: ': release of the bank to show'
  id: release
  inputBinding:
    prefix: --release
  type: string
- doc: '/off/status: (un)set biomaj in maintenance mode to prevent updates/removal'
  id: maintenance
  inputBinding:
    prefix: --maintenance
  type: string
