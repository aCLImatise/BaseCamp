class: CommandLineTool
id: planemo_training_fill_data_library.cwl
inputs:
- id: topic_name
  doc: Name (directory name) of the topic to create or in which a tutorial should
    be created or updates [required]
  type: string
  inputBinding:
    prefix: --topic_name
- id: tutorial_name
  doc: Name (directory name) of the tutorial to modify [required]
  type: string
  inputBinding:
    prefix: --tutorial_name
- id: zeno_do_link
  doc: Zenodo URL with the input data
  type: string
  inputBinding:
    prefix: --zenodo_link
- id: data_types
  doc: YAML file with the correspondance between Zenodo extension and Galaxy datatypes
  type: File
  inputBinding:
    prefix: --datatypes
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- training_fill_data_library
