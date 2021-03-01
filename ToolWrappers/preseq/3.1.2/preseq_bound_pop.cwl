class: CommandLineTool
id: preseq_bound_pop.cwl
inputs:
- id: in_output
  doc: 'species richness output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_max_num_points
  doc: "maximum number of points in quadrature estimates\n[10]"
  type: boolean?
  inputBinding:
    prefix: -max_num_points
- id: in_tolerance
  doc: numerical tolerance [0.000000]
  type: boolean?
  inputBinding:
    prefix: -tolerance
- id: in_bootstraps
  doc: number of bootstraps [500]
  type: boolean?
  inputBinding:
    prefix: -bootstraps
- id: in_c_level
  doc: level for confidence intervals [0.950000]
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
  doc: input is a text file containing the observed
  type: boolean?
  inputBinding:
    prefix: -hist
- id: in_bam
  doc: input is in BAM format
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_seg_len
  doc: "maximum segment length when merging paired end\nbam reads [5000]"
  type: boolean?
  inputBinding:
    prefix: -seg_len
- id: in_quick
  doc: quick mode, estimate without bootstrapping
  type: boolean?
  inputBinding:
    prefix: -quick
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
- id: in_histogram
  doc: '-V, -vals            input is a text file containing only the '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'species richness output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/preseq:3.1.2--hfb6f838_0
cwlVersion: v1.1
baseCommand:
- preseq
- bound_pop
