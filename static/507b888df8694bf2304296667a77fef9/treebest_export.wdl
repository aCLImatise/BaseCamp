version 1.0

task TreebestExport {
  input {
    String? width
    String? height
    String? margin
    String? font_size
    String? box_size
    String? font_width
    File? species_tree
    Boolean? suppress_bootstrap_value
    Boolean? blackwhite_mode
    Boolean? show_species_name
    Boolean? speciationduplication_inference
    Boolean? pseudolength
    String tree
  }
  command <<<
    treebest export \
      ~{tree} \
      ~{if defined(width) then ("-x " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("-y " +  '"' + height + '"') else ""} \
      ~{if defined(margin) then ("-m " +  '"' + margin + '"') else ""} \
      ~{if defined(font_size) then ("-f " +  '"' + font_size + '"') else ""} \
      ~{if defined(box_size) then ("-b " +  '"' + box_size + '"') else ""} \
      ~{if defined(font_width) then ("-w " +  '"' + font_width + '"') else ""} \
      ~{if defined(species_tree) then ("-s " +  '"' + species_tree + '"') else ""} \
      ~{true="-B" false="" suppress_bootstrap_value} \
      ~{true="-M" false="" blackwhite_mode} \
      ~{true="-S" false="" show_species_name} \
      ~{true="-d" false="" speciationduplication_inference} \
      ~{true="-p" false="" pseudolength}
  >>>
  parameter_meta {
    width: "width [640]"
    height: "height [480]"
    margin: "margin [20]"
    font_size: "font size [11]"
    box_size: "box size [4.0]"
    font_width: "font width [font_size/2]"
    species_tree: "species tree"
    suppress_bootstrap_value: "suppress bootstrap value"
    blackwhite_mode: "black/white mode"
    show_species_name: "show species name"
    speciationduplication_inference: "speciation/duplication inference"
    pseudolength: "pseudo-length"
    tree: ""
  }
}