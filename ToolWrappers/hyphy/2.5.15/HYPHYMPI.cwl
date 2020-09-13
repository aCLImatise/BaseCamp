class: CommandLineTool
id: ../../../HYPHYMPI.cwl
inputs:
- id: in_calculator_mode_causes
  doc: calculator mode; causes HyPhy to drop into an expression evaluation until 'exit'
    is typed
  type: boolean
  inputBinding:
    prefix: -c
- id: in_debug_mode_causes
  doc: debug mode; causes HyPhy to drop into an expression evaluation mode upon script
    error
  type: boolean
  inputBinding:
    prefix: -d
- id: in_interactive_mode_causes
  doc: interactive mode; causes HyPhy to always prompt the user for analysis options,
    even when defaults are available
  type: boolean
  inputBinding:
    prefix: -i
- id: in_postprocessor_mode_drops
  doc: "postprocessor mode; drops HyPhy into an interactive mode where general post-processing\
    \ scripts can be selected\nupon analysis completion"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_write_diagnostic_messages
  doc: write diagnostic messages to messages.log
  type: boolean
  inputBinding:
    prefix: -m
- id: in_keyword
  doc: "will be passed to the analysis (which uses KeywordArgument directives)\nmultiple\
    \ values for the same keywords are treated as an array of values for multiple\
    \ selectors"
  type: string
  inputBinding:
    prefix: --keyword
- id: in_h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
