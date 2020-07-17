class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gerpelem.cwl
inputs:
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: column_scores_filename
  doc: column scores filename
  type: File
  inputBinding:
    prefix: -f
- id: c
  doc: '[default = none]'
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: '[default = 0]'
  type: string
  inputBinding:
    prefix: -s
- id: suffix_naming_files
  doc: suffix for naming output files [default = ".elems"]
  type: string
  inputBinding:
    prefix: -x
- id: suffix_naming_file
  doc: suffix for naming exclusion region file [default = no output]
  type: string
  inputBinding:
    prefix: -w
- id: minimum_element_length
  doc: minimum element length [default = 4]
  type: long
  inputBinding:
    prefix: -l
- id: maximum_element_length
  doc: maximum element length [default = 2000]
  type: long
  inputBinding:
    prefix: -L
- id: inverse_rounding_tolerance
  doc: inverse of the rounding tolerance [default = 10]
  type: string
  inputBinding:
    prefix: -t
- id: depth_threshold_shallow
  doc: depth threshold for shallow columns, in substitutions per site [default = 0.5]
  type: string
  inputBinding:
    prefix: -d
- id: penalty_coefficient_shallow
  doc: penalty coefficient for shallow columns, as fraction of the median neutral
    rate [default = 0.5]
  type: string
  inputBinding:
    prefix: -p
- id: number_border_nucleotides
  doc: number of border nucleotides for shallow regions [default = 2]
  type: string
  inputBinding:
    prefix: -b
- id: total_number_allowed
  doc: total number of allowed non-border shallow nucleotides per element [default
    = 10]
  type: string
  inputBinding:
    prefix: -a
- id: acceptable_false_positive
  doc: acceptable false positive rate [default = 0.05]
  type: string
  inputBinding:
    prefix: -e
- id: denominator_minimum_candidate
  doc: denominator for minimum candidate element score formula [default = 10.0]
  type: string
  inputBinding:
    prefix: -q
- id: exponent_minimum_candidate
  doc: exponent for minimum candidate element score formula [default = 1.15]
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- gerpelem
