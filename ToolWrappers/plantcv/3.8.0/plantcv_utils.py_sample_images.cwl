class: CommandLineTool
id: plantcv_utils.py_sample_images.cwl
inputs:
- id: in_source
  doc: Source directory of images
  type: Directory
  inputBinding:
    prefix: --source
- id: in_outdir
  doc: Output directory for the random sample to get saved
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_number
  doc: "The number of images to sample\n"
  type: long
  inputBinding:
    prefix: --number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory for the random sample to get saved
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- plantcv-utils.py
- sample_images
