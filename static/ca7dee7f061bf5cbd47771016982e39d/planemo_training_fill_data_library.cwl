class: CommandLineTool
id: planemo_training_fill_data_library.cwl
inputs:
- id: in_topic_name
  doc: "Name (directory name) of the topic to create or in\nwhich a tutorial should\
    \ be created or updates\n[required]"
  type: Directory?
  inputBinding:
    prefix: --topic_name
- id: in_tutorial_name
  doc: "Name (directory name) of the tutorial to modify\n[required]"
  type: Directory?
  inputBinding:
    prefix: --tutorial_name
- id: in_zeno_do_link
  doc: Zenodo URL with the input data
  type: string?
  inputBinding:
    prefix: --zenodo_link
- id: in_data_types
  doc: "YAML file with the correspondance between Zenodo\nextension and Galaxy datatypes"
  type: File?
  inputBinding:
    prefix: --datatypes
- id: in_tool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- training_fill_data_library
