class: CommandLineTool
id: dupre.cwl
inputs:
- id: in_observed
  doc: "observed occupancy vector (space-separated ints, or a\nfilename)"
  type: string[]
  inputBinding:
    prefix: --observed
- id: in_target
  doc: "target size, relative (ends with x) or absolute\n(integer), e.g. '5x' or '1000000')"
  type: long
  inputBinding:
    prefix: --target
- id: in_truth
  doc: "true occupancy vector of the full dataset (space-\nseparated ints, or a filename)"
  type: string[]
  inputBinding:
    prefix: --truth
- id: in_subsample
  doc: "subsample size, relative (ends with x) or absolute\n(integer), e.g. '0.01x'\
    \ or '10000'"
  type: long
  inputBinding:
    prefix: --subsample
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_complexity
  doc: output complexity instead of duplication rate
  type: boolean
  inputBinding:
    prefix: --complexity
- id: in_k_zero
  doc: occupancy number above which to use the heuristic [25]
  type: long
  inputBinding:
    prefix: --K0
- id: in_allowed_standard_deviation_expected
  doc: allowed standard deviation for each expected occupancy
  type: string
  inputBinding:
    prefix: --zwidth
- id: in_allowed_standard_deviation_sum
  doc: "allowed standard deviation of sum of most significant\nterms"
  type: string
  inputBinding:
    prefix: --Zwidth
- id: in_name
  doc: name of this problem instance
  type: string
  inputBinding:
    prefix: --name
- id: in_histogram
  doc: instance data is given as PRESEQ histogram file(s)
  type: boolean
  inputBinding:
    prefix: --histogram
- id: in_strip_names
  doc: "strip instance names of observed occupancy vector of\nlast component for lookup"
  type: boolean
  inputBinding:
    prefix: --stripnames
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dupre
