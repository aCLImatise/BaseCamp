class: CommandLineTool
id: preseq_lc_extrap.cwl
inputs:
- id: in_output
  doc: 'yield output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_extra_p
  doc: maximum extrapolation [10000000000.000000]
  type: boolean?
  inputBinding:
    prefix: -extrap
- id: in_step
  doc: extrapolation step size [1000000.000000]
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_boots
  doc: number of bootstraps [100]
  type: boolean?
  inputBinding:
    prefix: -boots
- id: in_cval
  doc: level for confidence intervals [0.950000]
  type: boolean?
  inputBinding:
    prefix: -cval
- id: in_terms
  doc: maximum terms in estimator [100]
  type: boolean?
  inputBinding:
    prefix: -terms
- id: in_verbose
  doc: print more info
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_bam
  doc: input is in BAM format
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_seg_len
  doc: "maximum segment length when merging paired end bam\nreads [5000]"
  type: boolean?
  inputBinding:
    prefix: -seg_len
- id: in_pe
  doc: input is paired end read file
  type: boolean?
  inputBinding:
    prefix: -pe
- id: in_vals
  doc: input is a text file containing only the observed
  type: boolean?
  inputBinding:
    prefix: -vals
- id: in_quick
  doc: quick mode (no bootstraps) for confidence intervals
  type: boolean?
  inputBinding:
    prefix: -quick
- id: in_defects
  doc: no testing for defects
  type: boolean?
  inputBinding:
    prefix: -defects
- id: in_seed
  doc: seed for random number generator [408]
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_counts
  doc: '-H, -hist     input is a text file containing the observed histogram  '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'yield output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/preseq:3.1.2--hfb6f838_0
cwlVersion: v1.1
baseCommand:
- preseq
- lc_extrap
