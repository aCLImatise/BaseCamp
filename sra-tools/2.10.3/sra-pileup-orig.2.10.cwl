#!/usr/bin/env cwl-runner

baseCommand:
- sra-pileup-orig.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: sra-pileup-orig.2.10.3
inputs:
- doc: ''
  id: path
  inputBinding:
    position: 0
  type: File
- doc: '<name[:from-to]>  Filter by position on genome. Name can  either be file specific
    name (ex: "chr1" or  "1"). "from" and "to" are 1-based coordinates '
  id: aligned_region
  inputBinding:
    prefix: --aligned-region
  type: boolean
- doc: 'Output will be written to this file instead  of std-out '
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: 'Which alignment table(s) to use (p|s|e):  primary, secondary,  evidence-interval
    (default p) '
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: 'Compress output using bzip2 '
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: 'Compress output using gzip '
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: 'disable multithreading '
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: 'write timing log-file '
  id: timing
  inputBinding:
    prefix: --timing
  type: boolean
- doc: 'path to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Minimum mapq-value,  alignments with lower  mapq will be ignored (default=0) '
  id: min_mapq
  inputBinding:
    prefix: --minmapq
  type: long
- doc: 'process duplicates 0..off/1..on '
  id: duplicates
  inputBinding:
    prefix: --duplicates
  type: string
- doc: 'divide by spotgroups '
  id: spot_groups
  inputBinding:
    prefix: --spotgroups
  type: boolean
- doc: 'print depth per spotgroup '
  id: depth_per_spot_group
  inputBinding:
    prefix: --depth-per-spotgroup
  type: boolean
- doc: 'use original seq-name '
  id: seqname
  inputBinding:
    prefix: --seqname
  type: boolean
- doc: 'min percent of mismatches used in function  mismatch, default is 5% '
  id: min_mismatch
  inputBinding:
    prefix: --minmismatch
  type: boolean
- doc: 'If adjacent slices are closer than this,   they are merged and skiplist is
    created.   a value of zero disables the feature,  default is 10000 '
  id: merge_dist
  inputBinding:
    prefix: --merge-dist
  type: boolean
- doc: 'omit qualities '
  id: no_qual
  inputBinding:
    prefix: --noqual
  type: boolean
- doc: 'list references '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'list references coverage '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'sort pileup with counters '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'strand/tlen statistic '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'only lines with mismatch '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'list deletion counts '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'variation counters:  ref-name, ref-pos,  ref-base, coverage,  mismatch A,
    mismatch C,  mismatch G, mismatch T, deletes, inserts, ins  after A, ins after
    C, ins after G, ins  after T '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'list deletions greater then 20 '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'list only inserts/deletions '
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
