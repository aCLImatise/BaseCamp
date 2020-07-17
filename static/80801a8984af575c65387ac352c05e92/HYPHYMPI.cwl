class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HYPHYMPI.cwl
inputs:
- id: calculator_mode_causes
  doc: calculator mode; causes HyPhy to drop into an expression evaluation until 'exit'
    is typed
  type: boolean
  inputBinding:
    prefix: -c
- id: debug_mode_causes
  doc: debug mode; causes HyPhy to drop into an expression evaluation mode upon script
    error
  type: boolean
  inputBinding:
    prefix: -d
- id: interactive_mode_causes
  doc: interactive mode; causes HyPhy to always prompt the user for analysis options,
    even when defaults are available
  type: boolean
  inputBinding:
    prefix: -i
- id: postprocessor_mode_drops
  doc: postprocessor mode; drops HyPhy into an interactive mode where general post-processing
    scripts can be selected upon analysis completion
  type: boolean
  inputBinding:
    prefix: -p
- id: write_diagnostic_messages
  doc: write diagnostic messages to messages.log
  type: boolean
  inputBinding:
    prefix: -m
- id: keyword
  doc: will be passed to the analysis (which uses KeywordArgument directives) multiple
    values for the same keywords are treated as an array of values for multiple selectors
  type: string
  inputBinding:
    prefix: --keyword
- id: help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
