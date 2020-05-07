class: CommandLineTool
id: rake.cwl
inputs:
- id: silent
  doc: Like --quiet, but also suppresses the 'in directory' announcement.
  type: boolean
  inputBinding:
    prefix: --silent
- id: trace
  doc: =[OUT]                Turn on invoke/execute tracing, enable full backtrace.
    OUT can be stderr (default) or stdout.
  type: boolean
  inputBinding:
    prefix: --trace
- id: tasks
  doc: '[PATTERN]            Display the tasks (matching optional PATTERN) with descriptions,
    then exit.'
  type: boolean
  inputBinding:
    prefix: --tasks
- id: verbose
  doc: Log message to standard output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: where
  doc: '[PATTERN]            Describe the tasks (matching optional PATTERN), then
    exit.'
  type: boolean
  inputBinding:
    prefix: --where
- id: no_deprecation_warnings
  doc: Disable the deprecation warnings.
  type: boolean
  inputBinding:
    prefix: --no-deprecation-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- rake
