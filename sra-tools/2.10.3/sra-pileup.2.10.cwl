#!/usr/bin/env cwl-runner

baseCommand:
- sra-pileup.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: sra-pileup.2.10.3
inputs:
- doc: '<name[:from-to]>[,...] Filter by position on genome. Name can either be file
    specific name (ex: "chr1" or "1"). "from" and "to" (inclusive) are 1-based coordinates'
  id: aligned_region
  inputBinding:
    prefix: --aligned-region
  type: boolean
- doc: Output will be written to this file instead of std-out
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: 'Which alignment table(s) to use (p|s|e): primary, secondary, evidence-interval
    (default p)'
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: Compress output using bzip2
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: Compress output using gzip
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: write timing log-file
  id: timing
  inputBinding:
    prefix: --timing
  type: boolean
- doc: Minimum mapq-value, alignments with lower mapq will be ignored (default=0)
  id: min_mapq
  inputBinding:
    prefix: --minmapq
  type: string
- doc: <0|1>            process duplicates 0..off/1..on
  id: duplicates
  inputBinding:
    prefix: --duplicates
  type: boolean
- doc: divide by spotgroups
  id: spot_groups
  inputBinding:
    prefix: --spotgroups
  type: boolean
- doc: print depth per spotgroup
  id: depth_per_spot_group
  inputBinding:
    prefix: --depth-per-spotgroup
  type: boolean
- doc: use original seq-name
  id: seqname
  inputBinding:
    prefix: --seqname
  type: boolean
- doc: min percent of mismatches used in function mismatch, default is 5%
  id: min_mismatch
  inputBinding:
    prefix: --minmismatch
  type: string
- doc: If adjacent slices are closer than this, they are merged and skiplist is created.
    a value of zero disables the feature, default is 10000
  id: merge_dist
  inputBinding:
    prefix: --merge-dist
  type: string
- doc: omit qualities (faster)
  id: no_qual
  inputBinding:
    prefix: --noqual
  type: boolean
- doc: 'ref = list references, ref-ex = list references with coverage, count = sort
    pileup with counters stat = strand/tlen statistic, mismatch = only lines with
    mismatches, index = list deletions counts varcount = variation counters ( columns:
    ref-name, ref-pos, ref-base, coverage, mismatch A mismatch C, mismatch G, mismatch
    T, deletes, inserts, ins after A, ins after C ins after G ins after T ) deletes
    = list deletions greater than 20, indels = list only inserts/deletions'
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
