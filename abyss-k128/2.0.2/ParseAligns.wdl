version 1.0

task ParseAligns {
  input {
    String? min_align
    String? dist
    String? frag
    File? hist
    Boolean? sam
    Boolean? k_aligner
    String? cover
    Boolean? verbose
    Boolean? k
    String km_er
    String? option
  }
  command <<<
    ParseAligns \
      ~{km_er} \
      ~{option} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(frag) then ("--frag " +  '"' + frag + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{true="--sam" false="" sam} \
      ~{true="--kaligner" false="" k_aligner} \
      ~{if defined(cover) then ("--cover " +  '"' + cover + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-k" false="" k}
  >>>
  parameter_meta {
    min_align: "minimum alignment length"
    dist: "write distance estimates to this file"
    frag: "write fragment sizes to this file"
    hist: "write the fragment size histogram to FILE"
    sam: "alignments are in SAM format"
    k_aligner: "alignments are in KAligner format"
    cover: "coverage cut-off for distance estimates"
    verbose: "display verbose output"
    k: ""
    km_er: ""
    option: ""
  }
}