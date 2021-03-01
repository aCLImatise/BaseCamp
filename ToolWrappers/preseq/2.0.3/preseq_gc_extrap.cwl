class: CommandLineTool
id: preseq_gc_extrap.cwl
inputs:
- id: in_output
  doc: 'coverage yield output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_max_width
  doc: max fragment length, set equal to read length for single end
  type: boolean?
  inputBinding:
    prefix: -max_width
- id: in_extra_p
  doc: 'maximum extrapolation in base pairs(default: 1e+12)'
  type: boolean?
  inputBinding:
    prefix: -extrap
- id: in_step
  doc: 'step size in bases between extrapolations (default: 1e+08)'
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_bootstraps
  doc: 'number of bootstraps (default: 100),'
  type: boolean?
  inputBinding:
    prefix: -bootstraps
- id: in_cval
  doc: 'level for confidence intervals (default: 0.95)'
  type: boolean?
  inputBinding:
    prefix: -cval
- id: in_terms
  doc: maximum number of terms
  type: boolean?
  inputBinding:
    prefix: -terms
- id: in_verbose
  doc: print more information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_bed
  doc: input is in bed format without sequence information
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_quick
  doc: "quick mode: run gc_extrap without bootstrapping for\nconfidence intervals"
  type: boolean?
  inputBinding:
    prefix: -quick
- id: in_defects
  doc: defects mode to extrapolate without testing for defects
  type: boolean?
  inputBinding:
    prefix: -defects
- id: in_seed
  doc: seed for random number generator
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_reads
  doc: '-b, -bin_size    bin size (default: 10) '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'coverage yield output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- preseq
- gc_extrap
