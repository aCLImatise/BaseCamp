class: CommandLineTool
id: scepia_area27_locations..cwl
inputs:
- id: in_sc_epia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_area_two_seven
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scepia:0.5.0--py_0
cwlVersion: v1.1
baseCommand:
- scepia
- area27
- locations.
