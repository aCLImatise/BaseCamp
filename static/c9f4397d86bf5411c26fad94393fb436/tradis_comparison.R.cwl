class: CommandLineTool
id: tradis_comparison.R.cwl
inputs:
- id: in_controls
  doc: ": 'control' libraries, generally growth in a permissive"
  type: boolean?
  inputBinding:
    prefix: --controls
- id: in_conditions
  doc: ': libraries exposed to the experimental condition being'
  type: boolean?
  inputBinding:
    prefix: --conditions
- id: in__output_filename
  doc: ': output filename'
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_filename_diagnostic
  doc: ': output filename for diagnostic plots'
  type: File?
  inputBinding:
    prefix: -p
- id: in_enable_filtering_minimum
  doc: ': enable filtering on minimum read counts'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__filter_enabled
  doc: ': if --filter is enabled, sets minimum read count necessary in one'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_cut_off
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_filename
  doc: ': output filename'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_filename)
- id: out_output_filename_diagnostic
  doc: ': output filename for diagnostic plots'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_diagnostic)
hints: []
cwlVersion: v1.1
baseCommand:
- tradis_comparison.R
