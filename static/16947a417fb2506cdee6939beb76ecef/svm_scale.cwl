class: CommandLineTool
id: svm_scale.cwl
inputs:
- id: in_scaling_lower_default
  doc: ': x scaling lower limit (default -1)'
  type: long
  inputBinding:
    prefix: -l
- id: in_scaling_upper_limit
  doc: ': x scaling upper limit (default +1)'
  type: long
  inputBinding:
    prefix: -u
- id: in_y_scaling_limits
  doc: 'y_upper : y scaling limits (default: no y scaling)'
  type: string
  inputBinding:
    prefix: -y
- id: in_save_scaling_parameters
  doc: ': save scaling parameters to save_filename'
  type: File
  inputBinding:
    prefix: -s
- id: in_restore_scaling_parameters
  doc: ': restore scaling parameters from restore_filename'
  type: File
  inputBinding:
    prefix: -r
- id: in_data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svm-scale
