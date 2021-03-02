class: CommandLineTool
id: cassiopeeknife.cwl
inputs:
- id: in__sequence_convert
  doc: ': sequence to convert'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__output_file
  doc: ': output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in__show_version
  doc: ': show version'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: ': output file'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cassiopee:1.0.9--h77ca1fd_0
cwlVersion: v1.1
baseCommand:
- cassiopeeknife
