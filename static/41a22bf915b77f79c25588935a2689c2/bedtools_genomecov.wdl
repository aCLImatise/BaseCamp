version 1.0

task BedtoolsGenomecov {
  input {
    Boolean? i_bam
    Boolean? report_depth_onebased
    Boolean? dz
    Boolean? bg
    Boolean? bga
    Boolean? split
    Boolean? strand
    Boolean? pc
    Boolean? fs
    Boolean? du
    Boolean? five
    Boolean? three
    Boolean? max
    Boolean? scale
    Boolean? track_line
    Boolean? track_opts
    String? i
    String? g
  }
  command <<<
    bedtools genomecov \
      ~{true="-ibam" false="" i_bam} \
      ~{true="-d" false="" report_depth_onebased} \
      ~{true="-dz" false="" dz} \
      ~{true="-bg" false="" bg} \
      ~{true="-bga" false="" bga} \
      ~{true="-split" false="" split} \
      ~{true="-strand" false="" strand} \
      ~{true="-pc" false="" pc} \
      ~{true="-fs" false="" fs} \
      ~{true="-du" false="" du} \
      ~{true="-5" false="" five} \
      ~{true="-3" false="" three} \
      ~{true="-max" false="" max} \
      ~{true="-scale" false="" scale} \
      ~{true="-trackline" false="" track_line} \
      ~{true="-trackopts" false="" track_opts} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    i_bam: "The input file is in BAM format. Note: BAM _must_ be sorted by position"
    report_depth_onebased: "Report the depth at each genome position (with one-based coordinates). Default behavior is to report a histogram."
    dz: "Report the depth at each genome position (with zero-based coordinates). Reports only non-zero positions. Default behavior is to report a histogram."
    bg: "Report depth in BedGraph format. For details, see: genome.ucsc.edu/goldenPath/help/bedgraph.html"
    bga: "Report depth in BedGraph format, as above (-bg). However with this option, regions with zero  coverage are also reported. This allows one to quickly extract all regions of a genome with 0  coverage by applying: \"grep -w 0$\" to the output."
    split: "Treat \"split\" BAM or BED12 entries as distinct BED intervals. when computing coverage. For BAM files, this uses the CIGAR \"N\" and \"D\" operations  to infer the blocks for computing coverage. For BED12 files, this uses the BlockCount, BlockStarts, and BlockEnds fields (i.e., columns 10,11,12)."
    strand: "Calculate coverage of intervals from a specific strand. With BED files, requires at least 6 columns (strand is column 6).  - (STRING): can be + or -"
    pc: "Calculate coverage of pair-end fragments. Works for BAM files only"
    fs: "Force to use provided fragment size instead of read length Works for BAM files only"
    du: "Change strand af the mate read (so both reads from the same strand) useful for strand specific Works for BAM files only"
    five: "Calculate coverage of 5\" positions (instead of entire interval)."
    three: "Calculate coverage of 3\" positions (instead of entire interval)."
    max: "Combine all positions with a depth >= max into a single bin in the histogram. Irrelevant for -d and -bedGraph - (INTEGER)"
    scale: "Scale the coverage by a constant factor. Each coverage value is multiplied by this factor before being reported. Useful for normalizing coverage by, e.g., reads per million (RPM). - Default is 1.0; i.e., unscaled. - (FLOAT)"
    track_line: "Adds a UCSC/Genome-Browser track line definition in the first line of the output. - See here for more details about track line definition: http://genome.ucsc.edu/goldenPath/help/bedgraph.html - NOTE: When adding a trackline definition, the output BedGraph can be easily uploaded to the Genome Browser as a custom track, BUT CAN NOT be converted into a BigWig file (w/o removing the first line)."
    track_opts: "Writes additional track line definition parameters in the first line. - Example: -trackopts 'name=\"My Track\" visibility=2 color=255,30,30' Note the use of single-quotes if you have spaces in your parameters. - (TEXT)"
    i: ""
    g: ""
  }
}