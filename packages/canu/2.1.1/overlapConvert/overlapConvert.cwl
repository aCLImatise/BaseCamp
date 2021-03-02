class: CommandLineTool
id: overlapConvert.cwl
inputs:
- id: in_seqstore_needed_default
  doc: seqStore (needed for -coords, the default)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_coords
  doc: output coordiantes on reads
  type: boolean?
  inputBinding:
    prefix: -coords
- id: in_hangs
  doc: output hangs on reads
  type: boolean?
  inputBinding:
    prefix: -hangs
- id: in_unaligned
  doc: output unaligned regions on each read
  type: boolean?
  inputBinding:
    prefix: -unaligned
- id: in_file_do_to_vb
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- overlapConvert
