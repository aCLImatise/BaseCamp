class: CommandLineTool
id: ../../../svtools_bedpetobed12.cwl
inputs:
- id: input
  doc: BEDPE input file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Output BED12 to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: name
  doc: The name of the track. Default is 'BEDPE'
  type: string
  inputBinding:
    prefix: --name
- id: max_dist
  doc: The minimum distance for drawing intrachromosomal features as if they are interchromosomal
    (i.e., without a line spanning the two footprints). Default is 1Mb.
  type: long
  inputBinding:
    prefix: --maxdist
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- bedpetobed12
