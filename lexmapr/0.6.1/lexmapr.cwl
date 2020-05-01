#!/usr/bin/env cwl-runner

baseCommand:
- lexmapr
class: CommandLineTool
cwlVersion: v1.0
id: lexmapr
inputs:
- doc: Input csv or tsv file
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: '[OUTPUT], --output [OUTPUT] Output file'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Full output format
  id: full
  inputBinding:
    prefix: --full
  type: boolean
- doc: Path to JSON file containing the IRI of ontologies to fetch terms from
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: Classify samples into pre-defined buckets
  id: bucket
  inputBinding:
    prefix: --bucket
  type: boolean
- doc: Ignore or replace online cached resources, if there are any.
  id: no_cache
  inputBinding:
    prefix: --no-cache
  type: boolean
- doc: 'Pre-defined sets of command-line arguments for specialized purposes: * ifsac:  *
    maps samples to food and environmental resources * classifies samples into ifsac
    labels * outputs content to ``ifsac_output.tsv``'
  id: profile
  inputBinding:
    prefix: --profile
  type: string
