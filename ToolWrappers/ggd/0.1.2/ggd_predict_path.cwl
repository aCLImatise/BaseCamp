class: CommandLineTool
id: ggd_predict_path.cwl
inputs:
- id: in_channel
  doc: "The ggd channel of the recipe to find. (Default =\ngenomics)"
  type: string
  inputBinding:
    prefix: --channel
- id: in_prefix
  doc: "(Optional) The name or the full directory path to an\nconda environment. The\
    \ predicted path will be based on\nthis conda environment. When installing, the\
    \ data\npackage should also be installed in this environment.\n(Only needed if\
    \ not predicting for a path in the\ncurrent conda enviroment)"
  type: File
  inputBinding:
    prefix: --prefix
- id: in_package_name
  doc: "(Required) The name of the data package to predict a\nfile path for"
  type: File
  inputBinding:
    prefix: --package-name
- id: in_file_name
  doc: "(Required) The name of the file to predict that path\nfor. It is best if you\
    \ give the full and correct name\nof the file to predict the path for. If not,\
    \ ggd will\ntry to identify the right file, but won't guarantee\nthat it is the\
    \ rigth file\n"
  type: File
  inputBinding:
    prefix: --file-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ggd
- predict-path
