version 1.0

task BedtoolsFlank {
  input {
    Boolean? create_flanking_intervals
    Boolean? flank_should_start
    Boolean? flank_should_end
    Boolean? define_l_r_based
    Boolean? pct
    File? header
    String? g
    String? i
    Int chr_one
    Int chr_two
    Int chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  }
  command <<<
    bedtools flank \
      ~{chr_one} \
      ~{chr_two} \
      ~{chr_one_eight_gl_zero_zero_zero_two_zero_seven_random} \
      ~{if (create_flanking_intervals) then "-b" else ""} \
      ~{if (flank_should_start) then "-l" else ""} \
      ~{if (flank_should_end) then "-r" else ""} \
      ~{if (define_l_r_based) then "-s" else ""} \
      ~{if (pct) then "-pct" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    create_flanking_intervals: "Create flanking interval(s) using -b base pairs in each direction.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_should_start: "The number of base pairs that a flank should start from\\norig. start coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_should_end: "The number of base pairs that a flank should end from\\norig. end coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    define_l_r_based: "Define -l and -r based on strand.\\nE.g. if used, -l 500 for a negative-stranded feature,\\nit will start the flank 500 bp downstream.  Default = false."
    pct: "Define -l and -r as a fraction of the feature's length.\\nE.g. if used on a 1000bp feature, -l 0.50,\\nwill add 500 bp \\\"upstream\\\".  Default = false."
    header: "the header from the input file prior to results."
    g: ""
    i: ""
    chr_one: "249250621"
    chr_two: "243199373"
    chr_one_eight_gl_zero_zero_zero_two_zero_seven_random: "4262"
  }
  output {
    File out_stdout = stdout()
  }
}