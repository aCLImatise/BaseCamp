class: CommandLineTool
id: ../../../ivar_trim.cwl
inputs:
- id: required_sorted_bam
  doc: (Required) Sorted bam file, with aligned reads, to trim primers and quality
  type: boolean
  inputBinding:
    prefix: -i
- id: bed_file_primer
  doc: BED file with primer sequences and positions. If no BED file is specified,
    only quality trimming will be done.
  type: boolean
  inputBinding:
    prefix: -b
- id: minimum_length_retain
  doc: 'Minimum length of read to retain after trimming (Default: 30)'
  type: boolean
  inputBinding:
    prefix: -m
- id: minimum_quality_threshold
  doc: 'Minimum quality threshold for sliding window to pass (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: width_sliding_default
  doc: 'Width of sliding window (Default: 4)'
  type: boolean
  inputBinding:
    prefix: -s
- id: include_reads_primers
  doc: Include reads with no primers. By default, reads with no primers are excluded
  type: boolean
  inputBinding:
    prefix: -e
- id: required_prefix_file
  doc: (Required) Prefix for the output BAM file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- trim
