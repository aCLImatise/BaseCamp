class: CommandLineTool
id: plantcv_train.py_naive_bayes_multiclass.cwl
inputs:
- id: in_file
  doc: "Input file containing a table of pixel RGB values\nsampled for each input\
    \ class."
  type: File?
  inputBinding:
    prefix: --file
- id: in_outfile
  doc: Trained classifier output filename.
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_plots
  doc: Make output plots.
  type: boolean?
  inputBinding:
    prefix: --plots
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Trained classifier output filename.
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- plantcv-train.py
- naive_bayes_multiclass
