class: CommandLineTool
id: plantcv_train.py_naive_bayes.cwl
inputs:
- id: in_img_dir
  doc: Input directory containing images.
  type: Directory
  inputBinding:
    prefix: --imgdir
- id: in_mask_dir
  doc: Input directory containing black/white masks.
  type: Directory
  inputBinding:
    prefix: --maskdir
- id: in_outfile
  doc: Trained classifier output filename.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_plots
  doc: Make output plots.
  type: boolean
  inputBinding:
    prefix: --plots
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Trained classifier output filename.
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- plantcv-train.py
- naive_bayes
