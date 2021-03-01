class: CommandLineTool
id: black_hole_disabled.cwl
inputs:
- id: in_five_h
  doc: '4H  8S      6D 11D  6C     11H 12S  8D '
  type: long
  inputBinding:
    position: 0
- id: in_three_h
  doc: '2S  9H      4S  6H  4C      2C 13S  5S '
  type: long
  inputBinding:
    position: 0
- id: in_five_d
  doc: '2D 13C     12C  4D  7S     '
  type: long
  inputBinding:
    position: 0
- id: in_ones
  doc: '2C  3S  4S  3H  2S  1H 13H 12C 11S 10C  9C  8H '
  type: long
  inputBinding:
    position: 0
- id: in_seven_h
  doc: '6D  5H  4H  5D  4D  3C  2D  1D 13C 12D 11H 12S '
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- black-hole
- disabled
