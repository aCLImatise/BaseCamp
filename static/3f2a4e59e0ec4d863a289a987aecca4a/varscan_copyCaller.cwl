class: CommandLineTool
id: varscan_copyCaller.cwl
inputs:
- id: in_output_file
  doc: Output file to contain the calls
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_hom_del_file
  doc: Optional output file for candidate homozygous deletions
  type: File
  inputBinding:
    prefix: --output-homdel-file
- id: in_min_coverage
  doc: Minimum normal read depth at a position to make a call [20]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: in_min_tumor_coverage
  doc: Minimum tumor read depth at a position to make a non-homdel call [10]
  type: boolean
  inputBinding:
    prefix: --min-tumor-coverage
- id: in_max_hom_del_coverage
  doc: Maximum depth in tumor for candidate homozygous deletions [5]
  type: boolean
  inputBinding:
    prefix: --max-homdel-coverage
- id: in_amp_threshold
  doc: bound for log ratio to call amplification [0.25]
  type: double
  inputBinding:
    prefix: --amp-threshold
- id: in_del_threshold
  doc: bound for log ratio to call deletion (provide as positive number) [0.25]
  type: long
  inputBinding:
    prefix: --del-threshold
- id: in_min_region_size
  doc: Minimum size (in bases) for a region to be counted [10]
  type: boolean
  inputBinding:
    prefix: --min-region-size
- id: in_recenter_up
  doc: Recenter data around an adjusted baseline > 0 [0]
  type: boolean
  inputBinding:
    prefix: --recenter-up
- id: in_recenter_down
  doc: data around an adjusted baseline < 0 [0]
  type: long
  inputBinding:
    prefix: --recenter-down
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_copy_caller
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vars_can_dot_copy_number
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file to contain the calls
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_hom_del_file
  doc: Optional output file for candidate homozygous deletions
  type: File
  outputBinding:
    glob: $(inputs.in_output_hom_del_file)
cwlVersion: v1.1
baseCommand:
- varscan
- copyCaller
