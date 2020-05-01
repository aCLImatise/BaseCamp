#!/usr/bin/env cwl-runner

baseCommand:
- rm_spurious_events.pl
class: CommandLineTool
cwlVersion: v1.0
id: rm_spurious_events.pl
inputs:
- doc: filter out alignments supported by less reads than this fraction of the maximum
    number of reads per position
  id: frac_max
  inputBinding:
    prefix: --frac_max
  type: boolean
- doc: enable debug output
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
