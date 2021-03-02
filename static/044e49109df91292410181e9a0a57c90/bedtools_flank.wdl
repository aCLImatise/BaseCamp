version 1.0

task BedtoolsFlank {
  input {
    Boolean? create_flanking_intervals
    Boolean? flank_start_start
    Boolean? flank_end_end
    Boolean? define_l_r_based
    Boolean? pct
    File? header
    String? g
    String? i
  }
  command <<<
    bedtools flank \
      ~{if (create_flanking_intervals) then "-b" else ""} \
      ~{if (flank_start_start) then "-l" else ""} \
      ~{if (flank_end_end) then "-r" else ""} \
      ~{if (define_l_r_based) then "-s" else ""} \
      ~{if (pct) then "-pct" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    create_flanking_intervals: "Create flanking interval(s) using -b base pairs in each direction.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_start_start: "The number of base pairs that a flank should start from\\norig. start coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    flank_end_end: "The number of base pairs that a flank should end from\\norig. end coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    define_l_r_based: "Define -l and -r based on strand.\\nE.g. if used, -l 500 for a negative-stranded feature,\\nit will start the flank 500 bp downstream.  Default = false."
    pct: "Define -l and -r as a fraction of the feature's length.\\nE.g. if used on a 1000bp feature, -l 0.50,\\nwill add 500 bp \\\"upstream\\\".  Default = false."
    header: "the header from the input file prior to results."
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}