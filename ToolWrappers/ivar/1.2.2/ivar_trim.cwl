class: CommandLineTool
id: ivar_trim.cwl
inputs:
- id: in_required_sorted_bam
  doc: (Required) Sorted bam file, with aligned reads, to trim primers and quality
  type: boolean
  inputBinding:
    prefix: -i
- id: in_bed_file_primer
  doc: BED file with primer sequences and positions. If no BED file is specified,
    only quality trimming will be done.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_minimum_length_read
  doc: 'Minimum length of read to retain after trimming (Default: 30)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_minimum_quality_threshold
  doc: 'Minimum quality threshold for sliding window to pass (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_width_sliding_default
  doc: 'Width of sliding window (Default: 4)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_include_reads_primers
  doc: Include reads with no primers. By default, reads with no primers are excluded
  type: boolean
  inputBinding:
    prefix: -e
- id: in_required_prefix_output
  doc: (Required) Prefix for the output BAM file
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_output
  doc: (Required) Prefix for the output BAM file
  type: File
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
cwlVersion: v1.1
baseCommand:
- ivar
- trim
