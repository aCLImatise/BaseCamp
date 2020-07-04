class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_predict_path.cwl
inputs:
- id: channel
  doc: The ggd channel of the recipe to find. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: prefix
  doc: (Optional) The name or the full directory path to an conda environment. The
    predicted path will be based on this conda environment. When installing, the data
    package should also be installed in this environment. (Only needed if not predicting
    for a path in the current conda enviroment)
  type: string
  inputBinding:
    prefix: --prefix
- id: package_name
  doc: (Required) The name of the data package to predict a file path for
  type: string
  inputBinding:
    prefix: --package-name
- id: file_name
  doc: (Required) The name of the file to predict that path for. It is best if you
    give the full and correct name of the file to predict the path for. If not, ggd
    will try to identify the right file, but won't guarantee that it is the rigth
    file
  type: File
  inputBinding:
    prefix: --file-name
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- predict-path
