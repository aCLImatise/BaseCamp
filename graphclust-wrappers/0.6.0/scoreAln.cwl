#!/usr/bin/env cwl-runner

baseCommand:
- scoreAln.pl
class: CommandLineTool
cwlVersion: v1.0
id: scorealn.pl
inputs:
- doc: An alignment file                       [REQUIRED]
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: The format of the alignment             [REQUIRED] [CLUSTALW|TBA|MAF]
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Detailed output (1) or no details, only the score (0)
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Which score                             [REQUIRED] [sop|mpi]
  id: s
  inputBinding:
    prefix: -s
  type: boolean
