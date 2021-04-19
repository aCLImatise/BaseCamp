class: CommandLineTool
id: parsec_histories_update_dataset.cwl
inputs:
- id: in_annotation
  doc: Replace history dataset annotation with given string
  type: string?
  inputBinding:
    prefix: --annotation
- id: in_datatype
  doc: "Replace the datatype of the history dataset with the\ngiven string. The string\
    \ must be a valid Galaxy\ndatatype, both the current and the target datatypes\n\
    must allow datatype changes, and the dataset must not\nbe in use as input or output\
    \ of a running job\n(including uploads), otherwise an error will be raised."
  type: string?
  inputBinding:
    prefix: --datatype
- id: in_deleted
  doc: Mark or unmark history dataset as deleted
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_genome_build
  doc: Replace history dataset genome build (dbkey)
  type: string?
  inputBinding:
    prefix: --genome_build
- id: in_name
  doc: Replace history dataset name with the given string
  type: string?
  inputBinding:
    prefix: --name
- id: in_visible
  doc: Mark or unmark history dataset as visible
  type: boolean?
  inputBinding:
    prefix: --visible
- id: in_history_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dataset_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- histories
- update_dataset
