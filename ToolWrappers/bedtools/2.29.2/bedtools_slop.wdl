version 1.0

task BedtoolsSlop {
  input {
    Boolean? increase_bedgffvcf_entry
    Boolean? number_base_subtract
    Boolean? number_add_add
    Boolean? define_l_r_based
    Boolean? pct
    File? header
    String? g
    String? i
  }
  command <<<
    bedtools slop \
      ~{if (increase_bedgffvcf_entry) then "-b" else ""} \
      ~{if (number_base_subtract) then "-l" else ""} \
      ~{if (number_add_add) then "-r" else ""} \
      ~{if (define_l_r_based) then "-s" else ""} \
      ~{if (pct) then "-pct" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    increase_bedgffvcf_entry: "Increase the BED/GFF/VCF entry -b base pairs in each direction.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    number_base_subtract: "The number of base pairs to subtract from the start coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    number_add_add: "The number of base pairs to add to the end coordinate.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    define_l_r_based: "Define -l and -r based on strand.\\nE.g. if used, -l 500 for a negative-stranded feature,\\nit will add 500 bp downstream.  Default = false."
    pct: "Define -l and -r as a fraction of the feature's length.\\nE.g. if used on a 1000bp feature, -l 0.50,\\nwill add 500 bp \\\"upstream\\\".  Default = false."
    header: "the header from the input file prior to results."
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}