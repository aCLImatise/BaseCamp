class: CommandLineTool
id: dimspy_remove_samples.cwl
inputs:
- id: input
  doc: HDF5 file that contains a peak matrix object or list of peaklist objects from
    one of the processing steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peak matrix object or peaklist objects to.
  type: string
  inputBinding:
    prefix: --output
- id: sample_names
  doc: Sample name(s)
  type: string
  inputBinding:
    prefix: --sample-names
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- remove-samples
