version 1.0

task Bam2wigsh {
  input {
    Boolean? bed_graph
    Boolean? display
    Boolean? filter
    Boolean? format
    Boolean? header
    Boolean? help_format
    Boolean? interval
    Boolean? min_depth
    File? output_file_optional
    Boolean? partition
    Boolean? pedigree
    Boolean? percentile
    Boolean? window_shift
    Boolean? window_size
    String files
  }
  command <<<
    bam2wig_sh \
      ~{files} \
      ~{if (bed_graph) then "--bedgraph" else ""} \
      ~{if (display) then "--display" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (help_format) then "--helpFormat" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (min_depth) then "--mindepth" else ""} \
      ~{if (output_file_optional) then "--output" else ""} \
      ~{if (partition) then "--partition" else ""} \
      ~{if (pedigree) then "--pedigree" else ""} \
      ~{if (percentile) then "--percentile" else ""} \
      ~{if (window_shift) then "--windowShift" else ""} \
      ~{if (window_size) then "--windowSize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_graph: "Produce a BED GRAPH instead of a WIGGLE file.\\nDefault: false"
    display: "What kind of data should we display ?\\nDefault: COVERAGE\\nPossible Values: [COVERAGE, CLIPPING, INSERTION, DELETION, READ_GROUPS, CASE_CTRL]"
    filter: "A filter expression. Reads matching the expression will be filtered-out.\\nEmpty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\\nfor a complete syntax.\\nDefault: mapqlt(1) || MapQUnavailable() || Duplicate() || FailsVendorQuality() || NotPrimaryAlignment() || SupplementaryAlignment()"
    format: "`Printf` Format for the values. see\\nhttps://docs.oracle.com/javase/tutorial/java/data/numberformat.html .\\nUse \\\"%.01f\\\" to print an integer. \\\"%e\\\" for scientific notation.\\nDefault: %.3f"
    header: "print a UCSC custom track header: something lile track type=track_type\\nname=\\\"__REPLACE_WIG_NAME__\\\" description=\\\"__REPLACE_WIG_DESC__\\\". Use\\n`sed` to replace the tokens. e.g: `sed\\n'/^track/s/__REPLACE_WIG_NAME__/My data/'`\\nDefault: false"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    interval: "Limit analysis to this interval. An interval as the following syntax :\\n\\\"chrom:start-end\\\" or \\\"chrom:middle+extend\\\"  or \\\"chrom:start-end+extend\\\"\\nor \\\"chrom:start-end+extend-percent%\\\".A program might use a Reference\\nsequence to fix the chromosome name (e.g: 1->chr1)"
    min_depth: "When using display READ_GROUPS, What is the minimal read depth that\\nshould be considered ?\\nDefault: 0"
    output_file_optional: "Output file. Optional . Default: stdout"
    partition: "When using display READ_GROUPS, how should we partition the ReadGroup ?\\nData partitioning using the SAM Read Group (see\\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/ ) . It can\\nbe any combination of sample, library....\\nDefault: sample\\nPossible Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center, sample_by_platform_by_center, any]"
    pedigree: "Pedigree file for CASE_CTRL. A pedigree is a text file delimited with\\ntabs. No header. Columns are (1) Family (2) Individual-ID (3) Father Id\\nor '0' (4) Mother Id or '0' (5) Sex : 1 male/2 female / 0 unknown (6)\\nStatus : 0 unaffected, 1 affected,-9 unknown"
    percentile: "How to group data in the sliding window ?\\nDefault: AVERAGE\\nPossible Values: [MIN, MAX, MEDIAN, AVERAGE, RANDOM, SUM]"
    window_shift: "window shift\\nDefault: 25"
    window_size: "window size\\nDefault: 100\\n"
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}