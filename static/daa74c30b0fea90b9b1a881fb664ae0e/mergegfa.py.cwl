class: CommandLineTool
id: mergegfa.py.cwl
inputs:
- id: in_one
  doc: "GFA 2.0 file no.1 (format: 'xxx.gfa')"
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: "GFA 2.0 file no.2 (format: 'xxx.gfa')"
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_out
  doc: Name of the output merged GFA file
  type: File?
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Name of the output merged GFA file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- mergegfa.py
