class: CommandLineTool
id: ivar_trim.cwl
inputs:
- id: in_required_sorted_bam
  doc: (Required) Sorted bam file, with aligned reads, to trim primers and quality
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_bed_file_specified
  doc: BED file with primer sequences and positions. If no BED file is specified,
    only quality trimming will be done.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_primer_pair_information
  doc: "[EXPERIMENTAL] Primer pair information file containing left and right primer\
    \ names for the same amplicon separated by a tab\nIf provided, reads that do not\
    \ fall within atleat one amplicon will be ignored prior to primer trimming."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_primer_position_offset
  doc: 'Primer position offset (Default: 0). Reads that occur at the specified offset
    positions relative to primer positions will also be trimmed.'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_minimum_length_read
  doc: 'Minimum length of read to retain after trimming (Default: 30)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_quality_threshold
  doc: 'Minimum quality threshold for sliding window to pass (Default: 20)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_width_sliding_window
  doc: 'Width of sliding window (Default: 4)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_include_reads_reads
  doc: Include reads with no primers. By default, reads with no primers are excluded
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_keep_reads_allow
  doc: "Keep reads to allow for reanalysis: keep reads which would be dropped by\n\
    alignment length filter or primer requirements, but mark them QCFAIL"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_required_prefix_output
  doc: (Required) Prefix for the output BAM file
  type: File?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_output
  doc: (Required) Prefix for the output BAM file
  type: File?
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ivar:1.3.1--h089eab3_0
cwlVersion: v1.1
baseCommand:
- ivar
- trim
