#!/usr/bin/env cwl-runner

baseCommand:
- multiIntersectBed
class: CommandLineTool
cwlVersion: v1.0
id: multiintersectbed
inputs:
- doc: Invoke Ryan Layers's clustering algorithm.
  id: cluster
  inputBinding:
    prefix: -cluster
  type: boolean
- doc: Print a header line. (chrom/start/end + names of each file).
  id: header
  inputBinding:
    prefix: -header
  type: boolean
- doc: A list of names (one/file) to describe each file in -i. These names will be
    printed in the header line.
  id: names
  inputBinding:
    prefix: -names
  type: boolean
- doc: Use genome file to calculate empty regions. - STRING.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: Report empty regions (i.e., start/end intervals w/o values in all files). -
    Requires the '-g FILE' parameter.
  id: empty
  inputBinding:
    prefix: -empty
  type: boolean
- doc: Use TEXT when representing intervals having no value. - Default is '0', but
    you can use 'N/A' or any text.
  id: filler
  inputBinding:
    prefix: -filler
  type: string
- doc: Show detailed usage examples.
  id: examples
  inputBinding:
    prefix: -examples
  type: boolean
