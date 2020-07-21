class: CommandLineTool
id: ../../../sra_pileup_orig.cwl
inputs:
- id: aligned_region
  doc: '<name[:from-to]>  Filter by position on genome. Name can  either be file specific
    name (ex: "chr1" or  "1"). "from" and "to" are 1-based coordinates '
  type: boolean
  inputBinding:
    prefix: --aligned-region
- id: outfile
  doc: 'Output will be written to this file instead  of std-out '
  type: string
  inputBinding:
    prefix: --outfile
- id: table
  doc: 'Which alignment table(s) to use (p|s|e):  primary, secondary,  evidence-interval
    (default p) '
  type: string
  inputBinding:
    prefix: --table
- id: bzip_two
  doc: 'Compress output using bzip2 '
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: gzip
  doc: 'Compress output using gzip '
  type: boolean
  inputBinding:
    prefix: --gzip
- id: disable_multithreading
  doc: 'disable multithreading '
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: timing
  doc: 'write timing log-file '
  type: boolean
  inputBinding:
    prefix: --timing
- id: ngc
  doc: 'path to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: min_mapq
  doc: 'Minimum mapq-value,  alignments with lower  mapq will be ignored (default=0) '
  type: long
  inputBinding:
    prefix: --minmapq
- id: duplicates
  doc: 'process duplicates 0..off/1..on '
  type: string
  inputBinding:
    prefix: --duplicates
- id: spot_groups
  doc: 'divide by spotgroups '
  type: boolean
  inputBinding:
    prefix: --spotgroups
- id: depth_per_spot_group
  doc: 'print depth per spotgroup '
  type: boolean
  inputBinding:
    prefix: --depth-per-spotgroup
- id: seqname
  doc: 'use original seq-name '
  type: boolean
  inputBinding:
    prefix: --seqname
- id: min_mismatch
  doc: 'min percent of mismatches used in function  mismatch, default is 5% '
  type: boolean
  inputBinding:
    prefix: --minmismatch
- id: merge_dist
  doc: 'If adjacent slices are closer than this,   they are merged and skiplist is
    created.   a value of zero disables the feature,  default is 10000 '
  type: boolean
  inputBinding:
    prefix: --merge-dist
- id: no_qual
  doc: 'omit qualities '
  type: boolean
  inputBinding:
    prefix: --noqual
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sra-pileup-orig
