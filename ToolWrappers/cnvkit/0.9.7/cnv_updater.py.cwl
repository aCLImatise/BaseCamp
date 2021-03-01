class: CommandLineTool
id: cnv_updater.py.cwl
inputs:
- id: in_output_dir
  doc: Directory to write output .cnn files.
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_suffix
  doc: "Filename suffix to add before the '.cnn' extension in\noutput files. [Default:\
    \ .updated]\n"
  type: File?
  inputBinding:
    prefix: --suffix
- id: in_cnn_files
  doc: "CNVkit coverage files to update (*.targetcoverage.cnn,\n*.antitargetcoverage.cnn)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output .cnn files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_suffix
  doc: "Filename suffix to add before the '.cnn' extension in\noutput files. [Default:\
    \ .updated]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_suffix)
hints: []
cwlVersion: v1.1
baseCommand:
- cnv_updater.py
