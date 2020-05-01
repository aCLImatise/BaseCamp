#!/usr/bin/env cwl-runner

baseCommand:
- merge_variants
class: CommandLineTool
cwlVersion: v1.0
id: merge_variants
inputs:
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: samtools reference region (optional)
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: name of chromosome to skip over (argument may be  specified multiple times).
    Exclusions will be ignored  if a region argument is provided
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: merge files (can be specified multiple times)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: If true, don't stop because of any out-of-order  position conflicts. Any out
    of order positions are  ignored. In case of an overlap the first observation is
    used and subsequent repeats are ignored.
  id: murdock
  inputBinding:
    prefix: --murdock
  type: boolean
- doc: of overlapping indel alleles
  id: no
  inputBinding:
    prefix: '- No'
  type: string
