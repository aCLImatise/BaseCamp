class: CommandLineTool
id: varscan_copyCaller.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: copy_caller
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vars_can_copy_number
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_file
  doc: Output file to contain the calls
  type: boolean
  inputBinding:
    prefix: --output-file
- id: output_hom_del_file
  doc: Optional output file for candidate homozygous deletions
  type: boolean
  inputBinding:
    prefix: --output-homdel-file
- id: min_coverage
  doc: Minimum normal read depth at a position to make a call [20]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_tumor_coverage
  doc: Minimum tumor read depth at a position to make a non-homdel call [10]
  type: boolean
  inputBinding:
    prefix: --min-tumor-coverage
- id: max_hom_del_coverage
  doc: Maximum depth in tumor for candidate homozygous deletions [5]
  type: boolean
  inputBinding:
    prefix: --max-homdel-coverage
- id: amp_threshold
  doc: bound for log ratio to call amplification [0.25]
  type: string
  inputBinding:
    prefix: --amp-threshold
- id: del_threshold
  doc: bound for log ratio to call deletion (provide as positive number) [0.25]
  type: string
  inputBinding:
    prefix: --del-threshold
- id: min_region_size
  doc: Minimum size (in bases) for a region to be counted [10]
  type: boolean
  inputBinding:
    prefix: --min-region-size
- id: recenter_up
  doc: Recenter data around an adjusted baseline > 0 [0]
  type: boolean
  inputBinding:
    prefix: --recenter-up
- id: recenter_down
  doc: data around an adjusted baseline < 0 [0]
  type: string
  inputBinding:
    prefix: --recenter-down
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- copyCaller
