#!/usr/bin/env cwl-runner

baseCommand:
- bam2wig.sh
class: CommandLineTool
cwlVersion: v1.0
id: bam2wig.sh
inputs:
- doc: 'Produce a BED GRAPH instead of a WIGGLE file. Default: false'
  id: bed_graph
  inputBinding:
    prefix: --bedgraph
  type: boolean
- doc: 'What kind of data should we display ? Default: COVERAGE Possible Values: [COVERAGE,
    CLIPPING, INSERTION, DELETION, READ_GROUPS, CASE_CTRL]'
  id: display
  inputBinding:
    prefix: --display
  type: boolean
- doc: "A filter expression. Reads matching the expression will be filtered-out. \
    \ Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\
    \  for a complete syntax. Default: mapqlt(1) || MapQUnavailable() || Duplicate()\
    \ || FailsVendorQuality() || NotPrimaryAlignment() || SupplementaryAlignment()"
  id: filter
  inputBinding:
    prefix: --filter
  type: boolean
- doc: '`Printf` Format for the values. see  https://docs.oracle.com/javase/tutorial/java/data/numberformat.html
    .  Use "%.01f" to print an integer. "%e" for scientific notation. Default: %.3f'
  id: format
  inputBinding:
    prefix: --format
  type: boolean
- doc: "print a UCSC custom track header: something lile track type=track_type  name=\"\
    __REPLACE_WIG_NAME__\" description=\"__REPLACE_WIG_DESC__\". Use  `sed` to replace\
    \ the tokens. e.g: `sed  '/^track/s/__REPLACE_WIG_NAME__/My data/'` Default: false"
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: What kind of help. One of [usage,markdown,xml].
  id: help_format
  inputBinding:
    prefix: --helpFormat
  type: boolean
- doc: 'Limit analysis to this interval. An interval as the following syntax :  "chrom:start-end"
    or "chrom:middle+extend"  or "chrom:start-end+extend"  or "chrom:start-end+extend-percent%".A
    program might use a Reference  sequence to fix the chromosome name (e.g: 1->chr1)'
  id: interval
  inputBinding:
    prefix: --interval
  type: boolean
- doc: 'When using display READ_GROUPS, What is the minimal read depth that  should
    be considered ? Default: 0'
  id: min_depth
  inputBinding:
    prefix: --mindepth
  type: boolean
- doc: 'Output file. Optional . Default: stdout'
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: 'When using display READ_GROUPS, how should we partition the ReadGroup ?  Data
    partitioning using the SAM Read Group (see  https://gatkforums.broadinstitute.org/gatk/discussion/6472/
    ) . It can  be any combination of sample, library.... Default: sample Possible
    Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,
    sample_by_platform_by_center, any]'
  id: partition
  inputBinding:
    prefix: --partition
  type: boolean
- doc: "Pedigree file for CASE_CTRL. A pedigree is a text file delimited with  tabs.\
    \ No header. Columns are (1) Family (2) Individual-ID (3) Father Id  or '0' (4)\
    \ Mother Id or '0' (5) Sex : 1 male/2 female / 0 unknown (6)  Status : 0 unaffected,\
    \ 1 affected,-9 unknown"
  id: pedigree
  inputBinding:
    prefix: --pedigree
  type: boolean
- doc: 'How to group data in the sliding window ? Default: AVERAGE Possible Values:
    [MIN, MAX, MEDIAN, AVERAGE, RANDOM, SUM]'
  id: percentile
  inputBinding:
    prefix: --percentile
  type: boolean
- doc: 'window shift Default: 25'
  id: window_shift
  inputBinding:
    prefix: --windowShift
  type: boolean
- doc: 'window size Default: 100'
  id: window_size
  inputBinding:
    prefix: --windowSize
  type: boolean
