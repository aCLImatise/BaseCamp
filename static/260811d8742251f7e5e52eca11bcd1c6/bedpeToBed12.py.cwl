class: CommandLineTool
id: bedpeToBed12.py.cwl
inputs:
- id: in_bed_pe
  doc: BEDPE input file
  type: File?
  inputBinding:
    prefix: --bedpe
- id: in_name
  doc: The name of the track.  Default is 'BEDPE'.
  type: string?
  inputBinding:
    prefix: --name
- id: in_max_dist
  doc: "The minimum distance for drawing intrachromosomal\nfeatures as if they are\
    \ interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\n\
    is 1Mb.\n"
  type: long?
  inputBinding:
    prefix: --maxdist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- bedpeToBed12.py
