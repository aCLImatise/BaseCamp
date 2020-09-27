class: CommandLineTool
id: callstate.cwl
inputs:
- id: in_threads
  doc: 'Number of BAM decompression threads [default: 4]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: The output BED file
  type: File
  inputBinding:
    prefix: --output
- id: in_base_depth_output
  doc: If a file name is given, per-base depth will be written to this file
  type: File
  inputBinding:
    prefix: --base-depth-output
- id: in_min_base_qual
  doc: 'The minimum base quality for a base to contribute to QC depth [default: 10]'
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: in_min_mapq
  doc: 'The minimum mapping quality of reads to count as QC depth [default: 10]'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_min_depth
  doc: 'The minimum QC read depth before a read is considered callable [default: 20]'
  type: long
  inputBinding:
    prefix: --min-depth
- id: in_max_low_mapq
  doc: 'The maximum value of MAPQ before a read is considered as problematic mapped
    read. [default: 1]'
  type: long
  inputBinding:
    prefix: --max-low-mapq
- id: in_max_depth
  doc: 'The maximum read depth before a locus is considered high coverage [default:
    -1]'
  type: long
  inputBinding:
    prefix: --max-depth
- id: in_min_depth_low_mapq
  doc: 'Minimum read depth before a locus is considered candidate for poorly mapped
    [default: 10]'
  type: long
  inputBinding:
    prefix: --min-depth-low-mapq
- id: in_low_mapq_frac
  doc: 'If the fraction of low mapping reads exceeds this value, the site is considered
    poorly mapped [default: 0.5]'
  type: double
  inputBinding:
    prefix: --low-mapq-frac
- id: in_flag
  doc: 'exclude reads with any of the bits in FLAG set [default: 1796]'
  type: long
  inputBinding:
    prefix: --flag
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- callstate
