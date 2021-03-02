class: CommandLineTool
id: ggd_predict_path.cwl
inputs:
- id: in_channel
  doc: "The ggd channel of the recipe to find. (Default =\ngenomics)"
  type: string?
  inputBinding:
    prefix: --channel
- id: in_prefix
  doc: "(Optional) The name or the full directory path to an\nconda environment. The\
    \ predicted path will be based on\nthis conda environment. When installing, the\
    \ data\npackage should also be installed in this environment.\n(Only needed if\
    \ not predicting for a path in the\ncurrent conda environment)"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_id
  doc: "ID   (Optional) The ID to predict the path for if the\npackage is a meta-recipe.\
    \ If it is not a meta-recipe\nit will be ignored"
  type: File?
  inputBinding:
    prefix: --id
- id: in_dir_path
  doc: "(Required if '--file-name' not used) Whether or not to\nget the predicted\
    \ directory path rather then the\npredicted file path. If both --file-name and\
    \ --dir-\npath are provided the --file-name will be used and\n--dir-path will\
    \ be ignored"
  type: boolean?
  inputBinding:
    prefix: --dir-path
- id: in_file_name
  doc: "(Required if '--dir-path' not used) The name of the\nfile to predict that\
    \ path for. It is best if you give\nthe full and correct name of the file to predict\
    \ the\npath for. If not, ggd will try to identify the right\nfile, but won't guarantee\
    \ that it is the right file"
  type: File?
  inputBinding:
    prefix: --file-name
- id: in_required_name_predict
  doc: "(Required) The name of the data package to predict a\nfile path for\n"
  type: File?
  inputBinding:
    prefix: --package-name
- id: in_get_predicted_path
  doc: Get a predicted install file path for a data package before it is installed.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ggd
- predict-path
