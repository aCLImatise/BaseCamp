class: CommandLineTool
id: dimspy_remove_samples.cwl
inputs:
- id: in_input
  doc: "HDF5 file that contains a peak matrix object or list\nof peaklist objects\
    \ from one of the processing steps."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "HDF5 file to save the peak matrix object or peaklist\nobjects to."
  type: File
  inputBinding:
    prefix: --output
- id: in_sample_names
  doc: "Sample name(s)\n"
  type: string
  inputBinding:
    prefix: --sample-names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- remove-samples
