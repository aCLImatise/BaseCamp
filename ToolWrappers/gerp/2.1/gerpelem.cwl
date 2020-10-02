class: CommandLineTool
id: gerpelem.cwl
inputs:
- id: in_verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: in_column_scores_filename
  doc: column scores filename
  type: File
  inputBinding:
    prefix: -f
- id: in_c
  doc: '[default = none]'
  type: string
  inputBinding:
    prefix: -c
- id: in_suffix_naming_files
  doc: suffix for naming output files [default = ".elems"]
  type: string
  inputBinding:
    prefix: -x
- id: in_suffix_naming_exclusion
  doc: suffix for naming exclusion region file [default = no output]
  type: File
  inputBinding:
    prefix: -w
- id: in_minimum_element_length
  doc: minimum element length [default = 4]
  type: long
  inputBinding:
    prefix: -l
- id: in_maximum_element_length
  doc: maximum element length [default = 2000]
  type: long
  inputBinding:
    prefix: -L
- id: in_inverse_rounding_tolerance
  doc: inverse of the rounding tolerance [default = 10]
  type: long
  inputBinding:
    prefix: -t
- id: in_depth_threshold_shallow
  doc: depth threshold for shallow columns, in substitutions per site [default = 0.5]
  type: double
  inputBinding:
    prefix: -d
- id: in_penalty_coefficient_shallow
  doc: penalty coefficient for shallow columns, as fraction of the median neutral
    rate [default = 0.5]
  type: double
  inputBinding:
    prefix: -p
- id: in_number_border_nucleotides
  doc: number of border nucleotides for shallow regions [default = 2]
  type: long
  inputBinding:
    prefix: -b
- id: in_total_number_allowed
  doc: total number of allowed non-border shallow nucleotides per element [default
    = 10]
  type: long
  inputBinding:
    prefix: -a
- id: in_acceptable_false_positive
  doc: acceptable false positive rate [default = 0.05]
  type: double
  inputBinding:
    prefix: -e
- id: in_denominator_minimum_candidate
  doc: denominator for minimum candidate element score formula [default = 10.0]
  type: double
  inputBinding:
    prefix: -q
- id: in_exponent_minimum_candidate
  doc: exponent for minimum candidate element score formula [default = 1.15]
  type: double
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suffix_naming_exclusion
  doc: suffix for naming exclusion region file [default = no output]
  type: File
  outputBinding:
    glob: $(inputs.in_suffix_naming_exclusion)
cwlVersion: v1.1
baseCommand:
- gerpelem
