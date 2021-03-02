class: CommandLineTool
id: make_tracks_file.cwl
inputs:
- id: in_track_files
  doc: "Files to use in for the tracks. The ending of the file\nis used to define\
    \ the type of track. E.g. `.bw` for\nbigwig, `.bed` for bed etc. For a arcs or\
    \ links file,\nthe file ending recognized is `.arcs` or `.links`\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --trackFiles
- id: in_out
  doc: "file, -o output file\nFile to save the tracks (default: None)"
  type: File?
  inputBinding:
    prefix: --out
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_bed_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_etc_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "file, -o output file\nFile to save the tracks (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygenometracks:3.6--py_0
cwlVersion: v1.1
baseCommand:
- make_tracks_file
