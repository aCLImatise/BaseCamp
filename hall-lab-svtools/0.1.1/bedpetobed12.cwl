#!/usr/bin/env cwl-runner

baseCommand:
- bedpetobed12
class: CommandLineTool
cwlVersion: v1.0
id: bedpetobed12
inputs:
- doc: BEDPE input file
  id: bed_pe
  inputBinding:
    prefix: --bedpe
  type: File
- doc: The name of the track.  Default is 'BEDPE'.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: The minimum distance for drawing intrachromosomal features as if they are interchromosomal
    (i.e., without a line spanning the two footprints). Default is 1Mb.
  id: max_dist
  inputBinding:
    prefix: --maxdist
  type: long
