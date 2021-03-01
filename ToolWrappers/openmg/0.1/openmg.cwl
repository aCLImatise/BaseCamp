class: CommandLineTool
id: openmg.cwl
inputs:
- id: in_ec
  doc: ':  elemental composition of the molecules to be generated.'
  type: boolean?
  inputBinding:
    prefix: -ec
- id: in_sdf_file_store
  doc: ':   SDF file where to store the molecules.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_fr
  doc: ":  SDF file containing prescribed one or multiple substructures. In the case\n\
    of multiple substructures, they have to be non-overlapping."
  type: boolean?
  inputBinding:
    prefix: -fr
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- openmg
