class: CommandLineTool
id: TOBIAS_FilterFragments.cwl
inputs:
- id: bam
  doc: .bam-file to filter
  type: boolean
  inputBinding:
    prefix: --bam
- id: regions
  doc: .bed-file containing regions to filter fragments from
  type: boolean
  inputBinding:
    prefix: --regions
- id: mode
  doc: '{1,2}       Mode 1: Remove fragment if both reads overlap .bed-regions. Mode
    2: Remove whole fragment if one read is overlapping .bed-regions (default: 1)'
  type: boolean
  inputBinding:
    prefix: --mode
- id: output
  doc: 'Path to the filtered .bam-file (default: <prefix of --bam>_filtered.bam)'
  type: boolean
  inputBinding:
    prefix: --output
- id: threads
  doc: 'Number of threads used for decompressing/compressing bam (default: 10)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- FilterFragments
