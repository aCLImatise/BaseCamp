class: CommandLineTool
id: merlin_regress.cwl
inputs:
- id: in_marker_names
  doc: 'Others : --simulate, --reruns, --rankFamilies, --unrestriced'
  type: boolean
  inputBinding:
    prefix: --markerNames
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merlin-regress
