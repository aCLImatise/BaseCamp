class: CommandLineTool
id: cnv_updater.py.cwl
inputs:
- id: cnn_files
  doc: CNVkit coverage files to update (*.targetcoverage.cnn, *.antitargetcoverage.cnn).
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: Directory to write output .cnn files.
  type: string
  inputBinding:
    prefix: --output-dir
- id: suffix
  doc: "Filename suffix to add before the '.cnn' extension in output files. [Default:\
    \ .updated]"
  type: string
  inputBinding:
    prefix: --suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- cnv_updater.py
