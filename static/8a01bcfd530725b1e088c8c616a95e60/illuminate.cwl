class: CommandLineTool
id: illuminate.cwl
inputs:
- id: verbose
  doc: 'Increase verbosity           '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Suppress all console output   '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: 'Increase verbosity and prefix output with Unix timestamps. '
  type: boolean
  inputBinding:
    prefix: --debug
- id: interactive
  doc: Load dataset into iPython for interactive fun.
  type: boolean
  inputBinding:
    prefix: --interactive
- id: name
  doc: 'Set a name for this dataset. [default: meta.runID]'
  type: string
  inputBinding:
    prefix: --name
- id: all
  doc: Parse and print (or dump) everything
  type: boolean
  inputBinding:
    prefix: --all
- id: meta
  doc: Print flowcell_layout and read_config
  type: boolean
  inputBinding:
    prefix: --meta
- id: tile
  doc: Parse tile metrics
  type: boolean
  inputBinding:
    prefix: --tile
- id: quality
  doc: 'Parse quality metrics '
  type: boolean
  inputBinding:
    prefix: --quality
- id: index
  doc: Parse index metrics
  type: boolean
  inputBinding:
    prefix: --index
- id: error
  doc: Parse error metrics
  type: boolean
  inputBinding:
    prefix: --error
- id: cor_int
  doc: Parse corrected intensity metrics
  type: boolean
  inputBinding:
    prefix: --corint
- id: extraction
  doc: Parse extraction metrics
  type: boolean
  inputBinding:
    prefix: --extraction
- id: control
  doc: Parse control metrics
  type: boolean
  inputBinding:
    prefix: --control
- id: csv
  doc: 'Output raw data from parser as CSV '
  type: boolean
  inputBinding:
    prefix: --csv
- id: json
  doc: Output raw data from parser as JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: out_path
  doc: Output parser results to directory
  type: string
  inputBinding:
    prefix: --outpath
- id: timestamp
  doc: 'Generate filename(s) containing Unix timestamps (format: timestamp.metric.format)'
  type: boolean
  inputBinding:
    prefix: --timestamp
outputs: []
cwlVersion: v1.1
baseCommand:
- illuminate
