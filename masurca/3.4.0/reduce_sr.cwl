#!/usr/bin/env cwl-runner

baseCommand:
- reduce_sr
class: CommandLineTool
cwlVersion: v1.0
id: reduce_sr
inputs:
- doc: Check at most this many possible containing SuperReads (100)
  id: maximum_search_depth
  inputBinding:
    prefix: --maximum-search-depth
  type: long
- doc: Output file name (reduce.tmp)
  id: output
  inputBinding:
    prefix: --output
  type: File
