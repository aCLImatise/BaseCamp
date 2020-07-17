version 1.0

task FlankBed {
  input {
    Boolean? create_flanking_intervals
    Boolean? flank_should_start
    Boolean? flank_should_end
    Boolean? define_l_r_based
    Boolean? pct
    String? header
    String? i
    String? g
    String bed_tools
    String flank
  }
  command <<<
    flankBed \
      ~{bed_tools} \
      ~{flank} \
      ~{true="-b" false="" create_flanking_intervals} \
      ~{true="-l" false="" flank_should_start} \
      ~{true="-r" false="" flank_should_end} \
      ~{true="-s" false="" define_l_r_based} \
      ~{true="-pct" false="" pct} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    create_flanking_intervals: "Create flanking interval(s) using -b base pairs in each direction. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_should_start: "The number of base pairs that a flank should start from orig. start coordinate. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_should_end: "The number of base pairs that a flank should end from orig. end coordinate. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    define_l_r_based: "Define -l and -r based on strand. E.g. if used, -l 500 for a negative-stranded feature,  it will start the flank 500 bp downstream.  Default = false."
    pct: "Define -l and -r as a fraction of the feature's length. E.g. if used on a 1000bp feature, -l 0.50,  will add 500 bp \"upstream\".  Default = false."
    header: "the header from the input file prior to results."
    i: ""
    g: ""
    bed_tools: ""
    flank: ""
  }
}