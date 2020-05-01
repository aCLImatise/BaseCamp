#!/usr/bin/env cwl-runner

baseCommand:
- ShortStack
class: CommandLineTool
cwlVersion: v1.0
id: shortstack
inputs:
- doc: . Specify the value for --total_primaries to make a single locus run fast.
  id: loci_file
  inputBinding:
    prefix: --locifile
  type: boolean
