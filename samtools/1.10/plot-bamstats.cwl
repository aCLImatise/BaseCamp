#!/usr/bin/env cwl-runner

baseCommand:
- plot-bamstats
class: CommandLineTool
cwlVersion: v1.0
id: plot-bamstats
inputs:
- doc: Do not remove temporary files.
  id: keep_files
  inputBinding:
    prefix: --keep-files
  type: boolean
- doc: Set the Y axis scale of the Insert Size plot to log 10.
  id: log_y
  inputBinding:
    prefix: --log-y
  type: boolean
- doc: Merge multiple bamstats files and output to STDOUT.
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: The output files prefix, add a slash to create new directory.
  id: prefix
  inputBinding:
    prefix: --prefix
  type: File
- doc: Optional reference stats file with expected GC content (created with -s).
  id: ref_stats
  inputBinding:
    prefix: --ref-stats
  type: File
- doc: Calculate reference sequence GC for later use with -r
  id: do_ref_stats
  inputBinding:
    prefix: --do-ref-stats
  type: File
- doc: Restrict -s to the listed regions (tab-delimited chr,from,to. 1-based, inclusive)
  id: targets
  inputBinding:
    prefix: --targets
  type: File
