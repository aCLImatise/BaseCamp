class: CommandLineTool
id: banner_subcommand.cwl
inputs:
- id: in_train
  doc: Train takes a banner-matrix file from hulk and uses it to train a Random Forest
    Classifier
  type: string
  inputBinding:
    position: 0
- id: in_predict
  doc: Predict collects sketches from STDIN and classifies them using a RFC
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: Prints the banner version number and exits
  type: string
  inputBinding:
    position: 2
- id: in_subcommand
  doc: Subcommand to run
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
- banner
- subcommand
