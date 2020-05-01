#!/usr/bin/env cwl-runner

baseCommand:
- IntervalStats
class: CommandLineTool
cwlVersion: v1.0
id: intervalstats
inputs:
- doc: Input BED file
  id: query
  inputBinding:
    prefix: --query
  type: File
- doc: Input BED file
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: Input BED file
  id: domain
  inputBinding:
    prefix: --domain
  type: File
- doc: output file
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: use exact overlap values  (Otherwise overlapping intervals have a min  Distance
    of 0)  (default=on)
  id: overlap
  inputBinding:
    prefix: --overlap
  type: boolean
- doc: Checks if the minimal distance points to self.  Allows comparison of a dataset
    against itself (as  query and reference) but takes longer   (default=off)
  id: self
  inputBinding:
    prefix: --self
  type: boolean
- doc: calculate p-value per chromosome. That is, only  locations on the query interval
    chromosome are  considered for the numerator and denominator   (default=on)
  id: chr
  inputBinding:
    prefix: --chr
  type: boolean
- doc: make a distance map instead of using a query set   (default=off)
  id: dist_map
  inputBinding:
    prefix: --distmap
  type: boolean
