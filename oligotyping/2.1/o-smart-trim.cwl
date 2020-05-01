#!/usr/bin/env cwl-runner

baseCommand:
- o-smart-trim
class: CommandLineTool
cwlVersion: v1.0
id: o-smart-trim
inputs:
- doc: Even if there is only one read that is too short and therefore full of gap
    characters, the first location in the alignment file that *every* read has a base
    would have to match the length of that short read. With this percentage you can
    specify what is the percentage of reads you expect to pass while this trimming
    script tries to maximize the remaining read length after trimming. Default is
    95.00
  id: min_percent
  inputBinding:
    prefix: --min-percent
  type: string
- doc: Trim from the end of the file
  id: from_end
  inputBinding:
    prefix: --from-end
  type: boolean
- doc: Trim from the beginning of the file
  id: from_start
  inputBinding:
    prefix: --from-start
  type: boolean
- doc: Output file name
  id: output
  inputBinding:
    prefix: --output
  type: string
