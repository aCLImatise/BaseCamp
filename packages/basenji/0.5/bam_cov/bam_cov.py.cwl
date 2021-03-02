class: CommandLineTool
id: bam_cov.py.cwl
inputs:
- id: in_normalize_coverage_cutting
  doc: "Normalize coverage for a cutting bias model for k-mers\n[Default: none]"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_shift_event_fragment
  doc: "Shift the event to the fragment center, learning the\ndistribution for single\
    \ end reads [Default: False]"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_clip_max
  doc: "Clip coverage using adaptively-determined thresholds\nto this maximum [Default:\
    \ none]"
  type: long?
  inputBinding:
    prefix: --clip_max
- id: in_clip_multi
  doc: "Maximum coverage at a single position from multi-\nmapping reads [Default:\
    \ none]"
  type: long?
  inputBinding:
    prefix: --clip_multi
- id: in_fasta_obtain_sequence
  doc: "FASTA to obtain sequence to control for GC% [Default:\nnone]"
  type: File?
  inputBinding:
    prefix: -f
- id: in_control_local_gc
  doc: 'Control for local GC% [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_iterations_em_distribute
  doc: "Iterations of EM to distribute multi-mapping reads\n[Default: 0]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_output_directory
  doc: 'Output directory [Default: bam_cov]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_filter_alignments_mapq
  doc: 'Filter alignments for MAPQ >= threshold [Default: 2]'
  type: long?
  inputBinding:
    prefix: -q
- id: in_gaussian_standard_deviation
  doc: "Gaussian standard deviation to smooth coverage\nestimates with [Default: 32]"
  type: long?
  inputBinding:
    prefix: -s
- id: in_strand
  doc: "Stranded sequencing, output forward and reverse\ncoverage tracks [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_alignments_are_unsorted
  doc: 'Alignments are unsorted [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_fragment_shift_forward
  doc: 'Fragment shift for forward end read [Default: 0]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_fragment_shift_reverse
  doc: 'Fragment shift for reverse end read [Default: 0]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: bam_cov]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- bam_cov.py
