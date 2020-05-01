#!/usr/bin/env cwl-runner

baseCommand:
- HYPHYMPI
class: CommandLineTool
cwlVersion: v1.0
id: hyphympi
inputs:
- doc: calculator mode; causes HyPhy to drop into an expression evaluation until 'exit'
    is typed
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: debug mode; causes HyPhy to drop into an expression evaluation mode upon script
    error
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: interactive mode; causes HyPhy to always prompt the user for analysis options,
    even when defaults are available
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: postprocessor mode; drops HyPhy into an interactive mode where general post-processing
    scripts can be selected upon analysis completion
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: write diagnostic messages to messages.log
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: will be passed to the analysis (which uses KeywordArgument directives) multiple
    values for the same keywords are treated as an array of values for multiple selectors
  id: keyword
  inputBinding:
    prefix: --keyword
  type: string
