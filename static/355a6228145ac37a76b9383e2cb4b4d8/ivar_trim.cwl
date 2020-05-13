class: CommandLineTool
id: ivar_trim.cwl
inputs:
- id: i
  doc: (Required) Sorted bam file, with aligned reads, to trim primers and quality
  type: boolean
  inputBinding:
    prefix: -i
- id: b
  doc: BED file with primer sequences and positions. If no BED file is specified,
    only quality trimming will be done.
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: 'Minimum length of read to retain after trimming (Default: 30)'
  type: boolean
  inputBinding:
    prefix: -m
- id: q
  doc: 'Minimum quality threshold for sliding window to pass (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: 'Width of sliding window (Default: 4)'
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: Include reads with no primers. By default, reads with no primers are excluded
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: (Required) Prefix for the output BAM file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- trim
