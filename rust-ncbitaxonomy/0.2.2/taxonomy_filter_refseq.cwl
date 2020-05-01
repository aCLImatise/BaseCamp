#!/usr/bin/env cwl-runner

baseCommand:
- taxonomy_filter_refseq
class: CommandLineTool
cwlVersion: v1.0
id: taxonomy_filter_refseq
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_fast_a
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: taxonomy_dir
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: ancestor_name
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: output_fast_a
  inputBinding:
    position: 4
  type: string
- doc: String to prepend to names of nodes.dmp and names.dmp
  id: tax_prefix
  inputBinding:
    prefix: --tax_prefix
  type: string
