class: CommandLineTool
id: aln2wig.cwl
inputs:
- id: in_filename
  doc: <filename>
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_use_span_notation
  doc: Use span notation
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_name_of_track
  doc: Name of the track
  type: boolean?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- aln2wig
