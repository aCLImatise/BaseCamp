class: CommandLineTool
id: vcfleftalign.cwl
inputs:
- id: in_reference
  doc: Use this reference as a basis for realignment.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_window
  doc: Use a window of this many bp when left aligning (150).
  type: long?
  inputBinding:
    prefix: --window
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfleftalign
