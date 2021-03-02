class: CommandLineTool
id: preseq_gc_extrap.cwl
inputs:
- id: in_output
  doc: 'coverage yield output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_max_width
  doc: "max fragment length, set equal to read length for\nsingle end reads [10000]"
  type: boolean?
  inputBinding:
    prefix: -max_width
- id: in_bin_size
  doc: bin size [10]
  type: boolean?
  inputBinding:
    prefix: -bin_size
- id: in_extra_p
  doc: "maximum extrapolation in base pairs\n[1000000000000.000000]"
  type: boolean?
  inputBinding:
    prefix: -extrap
- id: in_step
  doc: "step size in bases between extrapolations\n[100000000.000000]"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_bootstraps
  doc: number of bootstraps [100]
  type: boolean?
  inputBinding:
    prefix: -bootstraps
- id: in_cval
  doc: level for confidence intervals [0.950000]
  type: boolean?
  inputBinding:
    prefix: -cval
- id: in_terms
  doc: maximum number of terms [100]
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
- id: in_defects_mode_extrapolate
  doc: defects mode to extrapolate without testing for
  type: boolean?
  inputBinding:
    prefix: -defects
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_seed_seed_random
  doc: '-r, -seed        seed for random number generator [408] '
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/preseq:3.1.2--hfb6f838_0
cwlVersion: v1.1
baseCommand:
- preseq
- gc_extrap
