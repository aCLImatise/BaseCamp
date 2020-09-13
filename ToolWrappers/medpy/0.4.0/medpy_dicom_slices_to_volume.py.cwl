class: CommandLineTool
id: ../../../medpy_dicom_slices_to_volume.py.cwl
inputs:
- id: in_just_print_spacing
  doc: Just print spacing and exit.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_dicom_slices_to_volume.py
