#!/usr/bin/env cwl-runner

baseCommand:
- rake
class: CommandLineTool
cwlVersion: v1.0
id: rake
inputs:
- doc: Like --quiet, but also suppresses the 'in directory' announcement.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: =[OUT]                Turn on invoke/execute tracing, enable full backtrace.
    OUT can be stderr (default) or stdout.
  id: trace
  inputBinding:
    prefix: --trace
  type: boolean
- doc: '[PATTERN]            Display the tasks (matching optional PATTERN) with descriptions,
    then exit.'
  id: tasks
  inputBinding:
    prefix: --tasks
  type: boolean
- doc: Log message to standard output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: '[PATTERN]            Describe the tasks (matching optional PATTERN), then
    exit.'
  id: where
  inputBinding:
    prefix: --where
  type: boolean
- doc: Disable the deprecation warnings.
  id: no_deprecation_warnings
  inputBinding:
    prefix: --no-deprecation-warnings
  type: boolean
