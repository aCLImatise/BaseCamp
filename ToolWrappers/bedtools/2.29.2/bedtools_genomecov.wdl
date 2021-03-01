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
    File? track_line
    Boolean? track_opts
    String? g
    String? i
  }
  command <<<
    bedtools genomecov \
      ~{if (i_bam) then "-ibam" else ""} \
      ~{if (report_depth_onebased) then "-d" else ""} \
      ~{if (dz) then "-dz" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (bga) then "-bga" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (fs) then "-fs" else ""} \
      ~{if (du) then "-du" else ""} \
      ~{if (five) then "-5" else ""} \
      ~{if (three) then "-3" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (scale) then "-scale" else ""} \
      ~{if (track_line) then "-trackline" else ""} \
      ~{if (track_opts) then "-trackopts" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_bam: "The input file is in BAM format.\\nNote: BAM _must_ be sorted by position"
    report_depth_onebased: "Report the depth at each genome position (with one-based coordinates).\\nDefault behavior is to report a histogram."
    dz: "Report the depth at each genome position (with zero-based coordinates).\\nReports only non-zero positions.\\nDefault behavior is to report a histogram."
    bg: "Report depth in BedGraph format. For details, see:\\ngenome.ucsc.edu/goldenPath/help/bedgraph.html"
    bga: "Report depth in BedGraph format, as above (-bg).\\nHowever with this option, regions with zero\\ncoverage are also reported. This allows one to\\nquickly extract all regions of a genome with 0\\ncoverage by applying: \\\"grep -w 0$\\\" to the output."
    split: "Treat \\\"split\\\" BAM or BED12 entries as distinct BED intervals.\\nwhen computing coverage.\\nFor BAM files, this uses the CIGAR \\\"N\\\" and \\\"D\\\" operations\\nto infer the blocks for computing coverage.\\nFor BED12 files, this uses the BlockCount, BlockStarts, and BlockEnds\\nfields (i.e., columns 10,11,12)."
    strand: "Calculate coverage of intervals from a specific strand.\\nWith BED files, requires at least 6 columns (strand is column 6).\\n- (STRING): can be + or -"
    pc: "Calculate coverage of pair-end fragments.\\nWorks for BAM files only"
    fs: "Force to use provided fragment size instead of read length\\nWorks for BAM files only"
    du: "Change strand af the mate read (so both reads from the same strand) useful for strand specific\\nWorks for BAM files only"
    five: "Calculate coverage of 5\\\" positions (instead of entire interval)."
    three: "Calculate coverage of 3\\\" positions (instead of entire interval)."
    max: "Combine all positions with a depth >= max into\\na single bin in the histogram. Irrelevant\\nfor -d and -bedGraph\\n- (INTEGER)"
    scale: "Scale the coverage by a constant factor.\\nEach coverage value is multiplied by this factor before being reported.\\nUseful for normalizing coverage by, e.g., reads per million (RPM).\\n- Default is 1.0; i.e., unscaled.\\n- (FLOAT)"
    track_line: "Adds a UCSC/Genome-Browser track line definition in the first line of the output.\\n- See here for more details about track line definition:\\nhttp://genome.ucsc.edu/goldenPath/help/bedgraph.html\\n- NOTE: When adding a trackline definition, the output BedGraph can be easily\\nuploaded to the Genome Browser as a custom track,\\nBUT CAN NOT be converted into a BigWig file (w/o removing the first line)."
    track_opts: "Writes additional track line definition parameters in the first line.\\n- Example:\\n-trackopts 'name=\\\"My Track\\\" visibility=2 color=255,30,30'\\nNote the use of single-quotes if you have spaces in your parameters.\\n- (TEXT)"
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_track_line = "${in_track_line}"
  }
}