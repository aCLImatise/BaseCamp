class: CommandLineTool
id: preseq_bound_pop.cwl
inputs:
- id: in_output
  doc: 'species richness output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_max_num_points
  doc: "maximum number of points in quadrature estimates\n(default: 10)"
  type: boolean?
  inputBinding:
    prefix: -max_num_points
- id: in_tolerance
  doc: 'numerical tolerance (default: 1e-20)'
  type: boolean?
  inputBinding:
    prefix: -tolerance
- id: in_bootstraps
  doc: 'number of bootstraps (default: 500)'
  type: boolean?
  inputBinding:
    prefix: -bootstraps
- id: in_c_level
  doc: 'level for confidence intervals (default: 0.95)'
  type: boolean?
  inputBinding:
    prefix: -clevel
- id: in_verbose
  doc: print more information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_pe
  doc: input is paired end read file
  type: boolean?
  inputBinding:
    prefix: -pe
- id: in_hist
  doc: input is a text file containing the observed histogram
  type: boolean?
  inputBinding:
    prefix: -hist
- id: in_vals
  doc: "input is a text file containing only the observed\nduplicate counts"
  type: boolean?
  inputBinding:
    prefix: -vals
- id: in_bam
  doc: input is in BAM format
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_seg_len
  doc: "maximum segment length when merging paired end bam reads\n(default: 5000)"
  type: boolean?
  inputBinding:
    prefix: -seg_len
- id: in_quick
  doc: quick mode, estimate without bootstrapping
  type: boolean?
  inputBinding:
    prefix: -quick
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
- id: in_bound_pop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sorted_bed_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'species richness output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- preseq
- bound_pop
