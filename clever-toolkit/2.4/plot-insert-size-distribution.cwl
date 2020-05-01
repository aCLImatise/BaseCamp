#!/usr/bin/env cwl-runner

baseCommand:
- plot-insert-size-distribution
class: CommandLineTool
cwlVersion: v1.0
id: plot-insert-size-distribution
inputs:
- doc: ''
  id: distribution_file
  inputBinding:
    position: 0
  type: string
- doc: 'Name of output file (default: <data-file>.pdf).'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Choose x-range such that at most the given mass is invisible in each tail (default=1e-4).
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: Additionally plot normal distribution with given mean and stddev (comma separated).
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: Instead of using quantiles, use the given xrange (comma separated).
  id: x_range
  inputBinding:
    prefix: --xrange
  type: string
- doc: 'Y-range to be used (default: auto).'
  id: y_range
  inputBinding:
    prefix: --yrange
  type: string
