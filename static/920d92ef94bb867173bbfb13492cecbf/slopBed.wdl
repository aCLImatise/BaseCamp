version 1.0

task SlopBed {
  input {
    Boolean? increase_bedgffvcf_pairs
    Boolean? number_subtract_subtract
    Boolean? number_add_add
    Boolean? define_l_r_based
    Boolean? pct
    String? header
    String? i
    String? g
    String bed_tools
    String slop
  }
  command <<<
    slopBed \
      ~{bed_tools} \
      ~{slop} \
      ~{true="-b" false="" increase_bedgffvcf_pairs} \
      ~{true="-l" false="" number_subtract_subtract} \
      ~{true="-r" false="" number_add_add} \
      ~{true="-s" false="" define_l_r_based} \
      ~{true="-pct" false="" pct} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    increase_bedgffvcf_pairs: "Increase the BED/GFF/VCF entry -b base pairs in each direction. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    number_subtract_subtract: "The number of base pairs to subtract from the start coordinate. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    number_add_add: "The number of base pairs to add to the end coordinate. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    define_l_r_based: "Define -l and -r based on strand. E.g. if used, -l 500 for a negative-stranded feature,  it will add 500 bp downstream.  Default = false."
    pct: "Define -l and -r as a fraction of the feature's length. E.g. if used on a 1000bp feature, -l 0.50,  will add 500 bp \"upstream\".  Default = false."
    header: "the header from the input file prior to results."
    i: ""
    g: ""
    bed_tools: ""
    slop: ""
  }
}