version 1.0

task ShiftBed {
  input {
    Boolean? shift_base_pairs
    Boolean? shift_features_p
    Boolean? shift_features_m
    Boolean? pct
    String? header
    String? i
    String? g
    String bed_tools
    String shift
  }
  command <<<
    shiftBed \
      ~{bed_tools} \
      ~{shift} \
      ~{true="-s" false="" shift_base_pairs} \
      ~{true="-p" false="" shift_features_p} \
      ~{true="-m" false="" shift_features_m} \
      ~{true="-pct" false="" pct} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    shift_base_pairs: "Shift the BED/GFF/VCF entry -s base pairs. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    shift_features_p: "Shift features on the + strand by -p base pairs. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    shift_features_m: "Shift features on the - strand by -m base pairs. - (Integer) or (Float, e.g. 0.1) if used with -pct."
    pct: "Define -s, -m and -p as a fraction of the feature's length. E.g. if used on a 1000bp feature, -s 0.50,  will shift the feature 500 bp \"upstream\".  Default = false."
    header: "the header from the input file prior to results."
    i: ""
    g: ""
    bed_tools: ""
    shift: ""
  }
}