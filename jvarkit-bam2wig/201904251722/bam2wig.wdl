version 1.0

task Bam2wig.sh {
  input {
    Boolean? bed_graph
    Boolean? display
    Boolean? filter
    Boolean? format
    Boolean? header
    Boolean? help_format
    Boolean? interval
    Boolean? min_depth
    Boolean? output_file_optional
    Boolean? partition
    Boolean? pedigree
    Boolean? percentile
    Boolean? window_shift
    Boolean? window_size
    File files
  }
  command <<<
    bam2wig.sh \
      ~{files} \
      ~{true="--bedgraph" false="" bed_graph} \
      ~{true="--display" false="" display} \
      ~{true="--filter" false="" filter} \
      ~{true="--format" false="" format} \
      ~{true="--header" false="" header} \
      ~{true="--helpFormat" false="" help_format} \
      ~{true="--interval" false="" interval} \
      ~{true="--mindepth" false="" min_depth} \
      ~{true="--output" false="" output_file_optional} \
      ~{true="--partition" false="" partition} \
      ~{true="--pedigree" false="" pedigree} \
      ~{true="--percentile" false="" percentile} \
      ~{true="--windowShift" false="" window_shift} \
      ~{true="--windowSize" false="" window_size}
  >>>
  parameter_meta {
    bed_graph: "Produce a BED GRAPH instead of a WIGGLE file. Default: false"
    display: "What kind of data should we display ? Default: COVERAGE Possible Values: [COVERAGE, CLIPPING, INSERTION, DELETION, READ_GROUPS, CASE_CTRL]"
    filter: "A filter expression. Reads matching the expression will be filtered-out.  Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj  for a complete syntax. Default: mapqlt(1) || MapQUnavailable() || Duplicate() || FailsVendorQuality() || NotPrimaryAlignment() || SupplementaryAlignment()"
    format: "`Printf` Format for the values. see  https://docs.oracle.com/javase/tutorial/java/data/numberformat.html .  Use \"%.01f\" to print an integer. \"%e\" for scientific notation. Default: %.3f"
    header: "print a UCSC custom track header: something lile track type=track_type  name=\"__REPLACE_WIG_NAME__\" description=\"__REPLACE_WIG_DESC__\". Use  `sed` to replace the tokens. e.g: `sed  '/^track/s/__REPLACE_WIG_NAME__/My data/'` Default: false"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    interval: "Limit analysis to this interval. An interval as the following syntax :  \"chrom:start-end\" or \"chrom:middle+extend\"  or \"chrom:start-end+extend\"  or \"chrom:start-end+extend-percent%\".A program might use a Reference  sequence to fix the chromosome name (e.g: 1->chr1)"
    min_depth: "When using display READ_GROUPS, What is the minimal read depth that  should be considered ? Default: 0"
    output_file_optional: "Output file. Optional . Default: stdout"
    partition: "When using display READ_GROUPS, how should we partition the ReadGroup ?  Data partitioning using the SAM Read Group (see  https://gatkforums.broadinstitute.org/gatk/discussion/6472/ ) . It can  be any combination of sample, library.... Default: sample Possible Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center, sample_by_platform_by_center, any]"
    pedigree: "Pedigree file for CASE_CTRL. A pedigree is a text file delimited with  tabs. No header. Columns are (1) Family (2) Individual-ID (3) Father Id  or '0' (4) Mother Id or '0' (5) Sex : 1 male/2 female / 0 unknown (6)  Status : 0 unaffected, 1 affected,-9 unknown"
    percentile: "How to group data in the sliding window ? Default: AVERAGE Possible Values: [MIN, MAX, MEDIAN, AVERAGE, RANDOM, SUM]"
    window_shift: "window shift Default: 25"
    window_size: "window size Default: 100"
    files: ""
  }
}