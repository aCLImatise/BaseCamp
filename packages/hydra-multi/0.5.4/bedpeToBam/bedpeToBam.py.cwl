class: CommandLineTool
id: bedpeToBam.py.cwl
inputs:
- id: in_bed_pe
  doc: BEDPE input file
  type: File?
  inputBinding:
    prefix: --bedpe
- id: in_max_dist
  doc: "The minimum distance for drawing intrachromosomal\nfeatures as if they are\
    \ interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\n\
    is 1Mb."
  type: long?
  inputBinding:
    prefix: --maxdist
- id: in_genome
  doc: The BEDTools genome file
  type: File?
  inputBinding:
    prefix: --genome
- id: in_out
  doc: "The output file name\n"
  type: File?
  inputBinding:
    prefix: --out
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "The output file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- bedpeToBam.py
