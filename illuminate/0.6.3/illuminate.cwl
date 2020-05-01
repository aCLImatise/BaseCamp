#!/usr/bin/env cwl-runner

baseCommand:
- illuminate
class: CommandLineTool
cwlVersion: v1.0
id: illuminate
inputs:
- doc: 'Increase verbosity           '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Suppress all console output   '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Increase verbosity and prefix output with Unix timestamps. '
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Load dataset into iPython for interactive fun.
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: 'Set a name for this dataset. [default: meta.runID]'
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Parse and print (or dump) everything
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: Print flowcell_layout and read_config
  id: meta
  inputBinding:
    prefix: --meta
  type: boolean
- doc: Parse tile metrics
  id: tile
  inputBinding:
    prefix: --tile
  type: boolean
- doc: 'Parse quality metrics '
  id: quality
  inputBinding:
    prefix: --quality
  type: boolean
- doc: Parse index metrics
  id: index
  inputBinding:
    prefix: --index
  type: boolean
- doc: Parse error metrics
  id: error
  inputBinding:
    prefix: --error
  type: boolean
- doc: Parse corrected intensity metrics
  id: cor_int
  inputBinding:
    prefix: --corint
  type: boolean
- doc: Parse extraction metrics
  id: extraction
  inputBinding:
    prefix: --extraction
  type: boolean
- doc: Parse control metrics
  id: control
  inputBinding:
    prefix: --control
  type: boolean
- doc: 'Output raw data from parser as CSV '
  id: csv
  inputBinding:
    prefix: --csv
  type: boolean
- doc: Output raw data from parser as JSON
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: Output parser results to directory
  id: out_path
  inputBinding:
    prefix: --outpath
  type: string
- doc: 'Generate filename(s) containing Unix timestamps (format: timestamp.metric.format)'
  id: timestamp
  inputBinding:
    prefix: --timestamp
  type: boolean
