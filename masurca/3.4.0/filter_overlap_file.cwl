#!/usr/bin/env cwl-runner

baseCommand:
- filter_overlap_file
class: CommandLineTool
cwlVersion: v1.0
id: filter_overlap_file
inputs:
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: Output file (/dev/fd/1)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Fragment in raw -dumpfragment format (false)
  id: dump
  inputBinding:
    prefix: --dump
  type: boolean
