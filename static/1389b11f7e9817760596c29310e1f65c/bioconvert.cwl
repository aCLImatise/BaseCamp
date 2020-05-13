class: CommandLineTool
id: bioconvert.cwl
inputs:
- id: verbosity
  doc: Set the outpout verbosity.
  type: string
  inputBinding:
    prefix: --verbosity
- id: level
  doc: Set the outpout verbosity. Same as --verbosity
  type: string
  inputBinding:
    prefix: --level
- id: dependency_report
  doc: Output all bioconvert dependencies in json and exit
  type: boolean
  inputBinding:
    prefix: --dependency-report
- id: allow_indirect_conversion
  doc: Show all possible indirect conversions (labelled as intermediate)
  type: boolean
  inputBinding:
    prefix: --allow-indirect-conversion
- id: conversion_graph
  doc: '[{cytoscape,cytoscape-all}]'
  type: boolean
  inputBinding:
    prefix: --conversion-graph
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert
