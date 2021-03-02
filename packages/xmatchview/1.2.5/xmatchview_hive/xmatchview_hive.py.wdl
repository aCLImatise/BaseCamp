version 1.0

task Xmatchviewhivepy {
  input {
    File? x
    File? y
    File? z
    Int? q
    Int? r
    Int? s
    File? d
    File? e
    File? f
    Int? identity_threshold_eg
    Int? length_bp_display
    String? pixel_basepair_scale
    Int? value_transparent_solid
  }
  command <<<
    xmatchview_hive_py \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(identity_threshold_eg) then ("-i " +  '"' + identity_threshold_eg + '"') else ""} \
      ~{if defined(length_bp_display) then ("-b " +  '"' + length_bp_display + '"') else ""} \
      ~{if defined(pixel_basepair_scale) then ("-c " +  '"' + pixel_basepair_scale + '"') else ""} \
      ~{if defined(value_transparent_solid) then ("-a " +  '"' + value_transparent_solid + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/xmatchview:1.2.5--0"
  }
  parameter_meta {
    x: "file [1 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)"
    y: "file [1 vs. 3] (cross_match .rep or Pairwise mApping Format .paf)"
    z: "file [3 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)"
    q: "text file 1 (format NAME:LENGTH)"
    r: "text file 2 (format NAME:LENGTH)"
    s: "text file 3 (format NAME:LENGTH)"
    d: "(eg. exons) coordinates GFF tsv file 1 (start end) - optional"
    e: "(eg. exons) coordinates GFF tsv file 2 (start end) - optional"
    f: "(eg. exons) coordinates GFF tsv file 3 (start end) - optional"
    identity_threshold_eg: "identity threshold (e.g. -i 90 will show colinear blocks >= 90% sequence identity)"
    length_bp_display: "length (bp) of similarity block to display"
    pixel_basepair_scale: "(pixel to basepair scale, for displaying the image)"
    value_transparent_solid: "value, from 0 (transparent) to 1 (solid, default)"
  }
  output {
    File out_stdout = stdout()
  }
}