class: CommandLineTool
id: bedpetobed12.cwl
inputs:
- id: bed_pe
  doc: BEDPE input file
  type: File
  inputBinding:
    prefix: --bedpe
- id: name
  doc: The name of the track.  Default is 'BEDPE'.
  type: string
  inputBinding:
    prefix: --name
- id: max_dist
  doc: The minimum distance for drawing intrachromosomal features as if they are interchromosomal
    (i.e., without a line spanning the two footprints). Default is 1Mb.
  type: long
  inputBinding:
    prefix: --maxdist
outputs: []
cwlVersion: v1.1
baseCommand:
- bedpetobed12
