class: CommandLineTool
id: medpy_dicom_to_4D.py.cwl
inputs:
- id: in_display_more_information
  doc: Display more information.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_split_dot
  doc: A typical use-case are DICOM images, which often come with the temporal and
    third spatial
  type: string
  inputBinding:
    position: 0
- id: in_dimension_dot
  doc: Copyright (C) 2013 Oskar Maier
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: Source directory.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
- id: in_dimension
  doc: The dimension in which to perform the cut (starting from 0).
  type: string
  inputBinding:
    position: 2
- id: in_offset
  doc: How many consecutive slices belong together before a shift occurs. / The offset
    between the volumes.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_dicom_to_4D.py
