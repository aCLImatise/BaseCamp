class: CommandLineTool
id: bam2wig.sh.cwl
inputs:
- id: in_bed_graph
  doc: "Produce a BED GRAPH instead of a WIGGLE file.\nDefault: false"
  type: boolean
  inputBinding:
    prefix: --bedgraph
- id: in_display
  doc: "What kind of data should we display ?\nDefault: COVERAGE\nPossible Values:\
    \ [COVERAGE, CLIPPING, INSERTION, DELETION, READ_GROUPS, CASE_CTRL]"
  type: boolean
  inputBinding:
    prefix: --display
- id: in_filter
  doc: "A filter expression. Reads matching the expression will be filtered-out.\n\
    Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\n\
    for a complete syntax.\nDefault: mapqlt(1) || MapQUnavailable() || Duplicate()\
    \ || FailsVendorQuality() || NotPrimaryAlignment() || SupplementaryAlignment()"
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_format
  doc: "`Printf` Format for the values. see\nhttps://docs.oracle.com/javase/tutorial/java/data/numberformat.html\
    \ .\nUse \"%.01f\" to print an integer. \"%e\" for scientific notation.\nDefault:\
    \ %.3f"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_header
  doc: "print a UCSC custom track header: something lile track type=track_type\nname=\"\
    __REPLACE_WIG_NAME__\" description=\"__REPLACE_WIG_DESC__\". Use\n`sed` to replace\
    \ the tokens. e.g: `sed\n'/^track/s/__REPLACE_WIG_NAME__/My data/'`\nDefault:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --header
- id: in_help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean
  inputBinding:
    prefix: --helpFormat
- id: in_interval
  doc: "Limit analysis to this interval. An interval as the following syntax :\n\"\
    chrom:start-end\" or \"chrom:middle+extend\"  or \"chrom:start-end+extend\"\n\
    or \"chrom:start-end+extend-percent%\".A program might use a Reference\nsequence\
    \ to fix the chromosome name (e.g: 1->chr1)"
  type: boolean
  inputBinding:
    prefix: --interval
- id: in_min_depth
  doc: "When using display READ_GROUPS, What is the minimal read depth that\nshould\
    \ be considered ?\nDefault: 0"
  type: boolean
  inputBinding:
    prefix: --mindepth
- id: in_output
  doc: 'Output file. Optional . Default: stdout'
  type: File
  inputBinding:
    prefix: --output
- id: in_partition
  doc: "When using display READ_GROUPS, how should we partition the ReadGroup ?\n\
    Data partitioning using the SAM Read Group (see\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/\
    \ ) . It can\nbe any combination of sample, library....\nDefault: sample\nPossible\
    \ Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,\
    \ sample_by_platform_by_center, any]"
  type: boolean
  inputBinding:
    prefix: --partition
- id: in_pedigree
  doc: "Pedigree file for CASE_CTRL. A pedigree is a text file delimited with\ntabs.\
    \ No header. Columns are (1) Family (2) Individual-ID (3) Father Id\nor '0' (4)\
    \ Mother Id or '0' (5) Sex : 1 male/2 female / 0 unknown (6)\nStatus : 0 unaffected,\
    \ 1 affected,-9 unknown"
  type: boolean
  inputBinding:
    prefix: --pedigree
- id: in_percentile
  doc: "How to group data in the sliding window ?\nDefault: AVERAGE\nPossible Values:\
    \ [MIN, MAX, MEDIAN, AVERAGE, RANDOM, SUM]"
  type: boolean
  inputBinding:
    prefix: --percentile
- id: in_window_shift
  doc: "window shift\nDefault: 25"
  type: boolean
  inputBinding:
    prefix: --windowShift
- id: in_window_size
  doc: "window size\nDefault: 100\n"
  type: boolean
  inputBinding:
    prefix: --windowSize
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Optional . Default: stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bam2wig.sh
