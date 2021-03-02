version 1.0

task ShiftBed {
  input {
    Boolean? shift_base_pairs
    Boolean? shift_features_p
    Boolean? shift_features_m
    Boolean? pct
    File? header
    String? g
    String? i
    String bed_tools
    String shift
  }
  command <<<
    shiftBed \
      ~{bed_tools} \
      ~{shift} \
      ~{if (shift_base_pairs) then "-s" else ""} \
      ~{if (shift_features_p) then "-p" else ""} \
      ~{if (shift_features_m) then "-m" else ""} \
      ~{if (pct) then "-pct" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    shift_base_pairs: "Shift the BED/GFF/VCF entry -s base pairs.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    shift_features_p: "Shift features on the + strand by -p base pairs.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    shift_features_m: "Shift features on the - strand by -m base pairs.\\n- (Integer) or (Float, e.g. 0.1) if used with -pct."
    pct: "Define -s, -m and -p as a fraction of the feature's length.\\nE.g. if used on a 1000bp feature, -s 0.50,\\nwill shift the feature 500 bp \\\"upstream\\\".  Default = false."
    header: "the header from the input file prior to results."
    g: ""
    i: ""
    bed_tools: ""
    shift: ""
  }
  output {
    File out_stdout = stdout()
  }
}