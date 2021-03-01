version 1.0

task Tab2featureGxtpl {
  input {
    String? name_chromosome_features
    String? _organism
    String? gv
    String? track_description_tabs
    Int? cs
    Int? zero_c
    Int? minc
    Int? max_c
    String? display_mode_fullpackeddenseby
    String? location_display_mode
    Int? lh
    Boolean? fixed_order
    Boolean? dt
    Int? fp
    Boolean? af
    Boolean? a_i
    Boolean? _feature_vector
    String? chr_starts
    String? chr_ends
  }
  command <<<
    tab2feature_gxt_pl \
      ~{if defined(name_chromosome_features) then ("-n " +  '"' + name_chromosome_features + '"') else ""} \
      ~{if defined(_organism) then ("-o " +  '"' + _organism + '"') else ""} \
      ~{if defined(gv) then ("-gv " +  '"' + gv + '"') else ""} \
      ~{if defined(track_description_tabs) then ("-d " +  '"' + track_description_tabs + '"') else ""} \
      ~{if defined(cs) then ("-cs " +  '"' + cs + '"') else ""} \
      ~{if defined(zero_c) then ("-zeroc " +  '"' + zero_c + '"') else ""} \
      ~{if defined(minc) then ("-minc " +  '"' + minc + '"') else ""} \
      ~{if defined(max_c) then ("-maxc " +  '"' + max_c + '"') else ""} \
      ~{if defined(display_mode_fullpackeddenseby) then ("-m " +  '"' + display_mode_fullpackeddenseby + '"') else ""} \
      ~{if defined(location_display_mode) then ("-l " +  '"' + location_display_mode + '"') else ""} \
      ~{if defined(lh) then ("-lh " +  '"' + lh + '"') else ""} \
      ~{if (fixed_order) then "-fixed_order" else ""} \
      ~{if (dt) then "-dt" else ""} \
      ~{if defined(fp) then ("-fp " +  '"' + fp + '"') else ""} \
      ~{if (af) then "-af" else ""} \
      ~{if (a_i) then "-ai" else ""} \
      ~{if (_feature_vector) then "-v" else ""} \
      ~{if defined(chr_starts) then ("-chr_starts " +  '"' + chr_starts + '"') else ""} \
      ~{if defined(chr_ends) then ("-chr_ends " +  '"' + chr_ends + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_chromosome_features: ":          Name of the chromosome track (default: Features )"
    _organism: ":           Organism"
    gv: ":          Genome Version (default: NA)"
    track_description_tabs: ":          Track description (Tabs will be converted to spaces, default: empty)"
    cs: ":         Fix the max color for features that contain words from the list to colors\\nspecified in the list. The format of list is: <str1;color1;...>\\nfor specifying that features whose name contain str1 are set to color1"
    zero_c: ":       Fix the zero color intensity for all features to be num"
    minc: ":        Fix the min color intensity for all features to be num"
    max_c: ":        Fix the max color intensity for all features to be num"
    display_mode_fullpackeddenseby: ":           Display mode (Full/Packed/Dense/By Types) (default: By Types)"
    location_display_mode: ":           Location Display mode (Color gradient/Filled box/Unfilled box/Filled oval/Unfilled oval) (default: Color gradient)"
    lh: ":          Location height (default: 10)"
    fixed_order: ":       Use a fixed ordering on the feature types"
    dt: ":                Display track information"
    fp: ":          Footer pixels (spacing below the track)."
    af: ":                Add the id of the feature to the name/id of the feature"
    a_i: ":                Add a counter id to each instance"
    _feature_vector: ":                 Feature vector"
    chr_starts: "Chromosome start locations (optional format: <chr_name>;<start>...)"
    chr_ends: "Chromosome end locations (optional format: <chr_name>;<end>...)"
  }
  output {
    File out_stdout = stdout()
  }
}