class: CommandLineTool
id: svtools_bedpetobed12.cwl
inputs:
- id: in_input
  doc: BEDPE input file
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'Output BED12 to write (default: stdout)'
  type: long
  inputBinding:
    prefix: --output
- id: in_name
  doc: The name of the track. Default is 'BEDPE'
  type: string
  inputBinding:
    prefix: --name
- id: in_max_dist
  doc: "The minimum distance for drawing intrachromosomal\nfeatures as if they are\
    \ interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\n\
    is 1Mb."
  type: long
  inputBinding:
    prefix: --maxdist
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtools
- bedpetobed12
