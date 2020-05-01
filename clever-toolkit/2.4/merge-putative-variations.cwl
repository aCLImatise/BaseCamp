#!/usr/bin/env cwl-runner

baseCommand:
- merge-putative-variations
class: CommandLineTool
cwlVersion: v1.0
id: merge-putative-variations
inputs:
- doc: '[ --min_weight ] arg (=1) Minimal weight to be printed (default=1).'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --min_length ] arg (=0) Minimum length.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --sort_by_weight ]      Sort by weight (default: by position)'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --filter ] arg          Filter file; only retain deletions in the given  file.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --all_from_filter ]     Output all variations in the given filter set.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --input_file ] arg      Input file with variants (equivalent to  specifying
    input files as positional arguments).'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
