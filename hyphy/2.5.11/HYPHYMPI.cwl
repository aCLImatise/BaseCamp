class: CommandLineTool
id: HYPHYMPI.cwl
inputs:
- id: c
  doc: calculator mode; causes HyPhy to drop into an expression evaluation until 'exit'
    is typed
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: debug mode; causes HyPhy to drop into an expression evaluation mode upon script
    error
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: interactive mode; causes HyPhy to always prompt the user for analysis options,
    even when defaults are available
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: postprocessor mode; drops HyPhy into an interactive mode where general post-processing
    scripts can be selected upon analysis completion
  type: boolean
  inputBinding:
    prefix: -p
- id: m
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
outputs: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
