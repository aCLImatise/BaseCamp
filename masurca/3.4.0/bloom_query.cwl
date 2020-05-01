#!/usr/bin/env cwl-runner

baseCommand:
- bloom_query
class: CommandLineTool
cwlVersion: v1.0
id: bloom_query
inputs:
- doc: '*k-mer size'
  id: mer
  inputBinding:
    prefix: --mer
  type: long
