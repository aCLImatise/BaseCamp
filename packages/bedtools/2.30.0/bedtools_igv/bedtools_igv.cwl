class: CommandLineTool
id: bedtools_igv.cwl
inputs:
- id: in_path
  doc: "The full path to which the IGV snapshots should be written.\n(STRING) Default:\
    \ ./"
  type: boolean?
  inputBinding:
    prefix: -path
- id: in_sess
  doc: "The full path to an existing IGV session file to be\nloaded prior to taking\
    \ snapshots.\n(STRING) Default is for no session to be loaded."
  type: boolean?
  inputBinding:
    prefix: -sess
- id: in_sort
  doc: "The type of BAM sorting you would like to apply to each image.\nOptions: base,\
    \ position, strand, quality, sample, and readGroup\nDefault is to apply no sorting\
    \ at all."
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_clps
  doc: "Collapse the aligned reads prior to taking a snapshot.\nDefault is to no collapse."
  type: boolean?
  inputBinding:
    prefix: -clps
- id: in_name
  doc: "Use the \"name\" field (column 4) for each image's filename.\nDefault is to\
    \ use the \"chr:start-pos.ext\"."
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_slop
  doc: "Number of flanking base pairs on the left & right of the image.\n- (INT) Default\
    \ = 0."
  type: boolean?
  inputBinding:
    prefix: -slop
- id: in_img
  doc: "The type of image to be created.\nOptions: png, eps, svg\nDefault is png."
  type: boolean?
  inputBinding:
    prefix: -img
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedtools
- igv
