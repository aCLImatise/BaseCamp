#!/usr/bin/env cwl-runner

baseCommand:
- convertToExtent
class: CommandLineTool
cwlVersion: v1.0
id: converttoextent
inputs:
- doc: be chatty
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: output the whole query def line
  id: full_query
  inputBinding:
    prefix: -fullquery
  type: boolean
- doc: output the whole genomic def line
  id: full_genomic
  inputBinding:
    prefix: -fullgenomic
  type: boolean
- doc: include exons
  id: exons
  inputBinding:
    prefix: -exons
  type: boolean
- doc: include the IDX of each sequence
  id: extended
  inputBinding:
    prefix: -extended
  type: boolean
