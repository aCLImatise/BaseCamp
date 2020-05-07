class: CommandLineTool
id: bam2wig.sh.cwl
inputs:
- id: bed_graph
  doc: 'Produce a BED GRAPH instead of a WIGGLE file. Default: false'
  type: boolean
  inputBinding:
    prefix: --bedgraph
- id: display
  doc: 'What kind of data should we display ? Default: COVERAGE Possible Values: [COVERAGE,
    CLIPPING, INSERTION, DELETION, READ_GROUPS, CASE_CTRL]'
  type: boolean
  inputBinding:
    prefix: --display
- id: filter
  doc: "A filter expression. Reads matching the expression will be filtered-out. \
    \ Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\
    \  for a complete syntax. Default: mapqlt(1) || MapQUnavailable() || Duplicate()\
    \ || FailsVendorQuality() || NotPrimaryAlignment() || SupplementaryAlignment()"
  type: boolean
  inputBinding:
    prefix: --filter
- id: format
  doc: '`Printf` Format for the values. see  https://docs.oracle.com/javase/tutorial/java/data/numberformat.html
    .  Use "%.01f" to print an integer. "%e" for scientific notation. Default: %.3f'
  type: boolean
  inputBinding:
    prefix: --format
- id: header
  doc: "print a UCSC custom track header: something lile track type=track_type  name=\"\
    __REPLACE_WIG_NAME__\" description=\"__REPLACE_WIG_DESC__\". Use  `sed` to replace\
    \ the tokens. e.g: `sed  '/^track/s/__REPLACE_WIG_NAME__/My data/'` Default: false"
  type: boolean
  inputBinding:
    prefix: --header
- id: help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean
  inputBinding:
    prefix: --helpFormat
- id: interval
  doc: 'Limit analysis to this interval. An interval as the following syntax :  "chrom:start-end"
    or "chrom:middle+extend"  or "chrom:start-end+extend"  or "chrom:start-end+extend-percent%".A
    program might use a Reference  sequence to fix the chromosome name (e.g: 1->chr1)'
  type: boolean
  inputBinding:
    prefix: --interval
- id: min_depth
  doc: 'When using display READ_GROUPS, What is the minimal read depth that  should
    be considered ? Default: 0'
  type: boolean
  inputBinding:
    prefix: --mindepth
- id: output
  doc: 'Output file. Optional . Default: stdout'
  type: boolean
  inputBinding:
    prefix: --output
- id: partition
  doc: 'When using display READ_GROUPS, how should we partition the ReadGroup ?  Data
    partitioning using the SAM Read Group (see  https://gatkforums.broadinstitute.org/gatk/discussion/6472/
    ) . It can  be any combination of sample, library.... Default: sample Possible
    Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,
    sample_by_platform_by_center, any]'
  type: boolean
  inputBinding:
    prefix: --partition
- id: pedigree
  doc: "Pedigree file for CASE_CTRL. A pedigree is a text file delimited with  tabs.\
    \ No header. Columns are (1) Family (2) Individual-ID (3) Father Id  or '0' (4)\
    \ Mother Id or '0' (5) Sex : 1 male/2 female / 0 unknown (6)  Status : 0 unaffected,\
    \ 1 affected,-9 unknown"
  type: boolean
  inputBinding:
    prefix: --pedigree
- id: percentile
  doc: 'How to group data in the sliding window ? Default: AVERAGE Possible Values:
    [MIN, MAX, MEDIAN, AVERAGE, RANDOM, SUM]'
  type: boolean
  inputBinding:
    prefix: --percentile
- id: window_shift
  doc: 'window shift Default: 25'
  type: boolean
  inputBinding:
    prefix: --windowShift
- id: window_size
  doc: 'window size Default: 100'
  type: boolean
  inputBinding:
    prefix: --windowSize
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2wig.sh
