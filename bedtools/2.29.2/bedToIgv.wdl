version 1.0

task BedToIgv {
  input {
    Boolean? path
    Boolean? sess
    Boolean? sort
    Boolean? clps
    Boolean? name
    Boolean? slop
    Boolean? img
    String? i
    String bed_tools
    String igv
  }
  command <<<
    bedToIgv \
      ~{bed_tools} \
      ~{igv} \
      ~{true="-path" false="" path} \
      ~{true="-sess" false="" sess} \
      ~{true="-sort" false="" sort} \
      ~{true="-clps" false="" clps} \
      ~{true="-name" false="" name} \
      ~{true="-slop" false="" slop} \
      ~{true="-img" false="" img} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    path: "The full path to which the IGV snapshots should be written. (STRING) Default: ./"
    sess: "The full path to an existing IGV session file to be  loaded prior to taking snapshots. (STRING) Default is for no session to be loaded."
    sort: "The type of BAM sorting you would like to apply to each image.  Options: base, position, strand, quality, sample, and readGroup Default is to apply no sorting at all."
    clps: "Collapse the aligned reads prior to taking a snapshot.  Default is to no collapse."
    name: "Use the \"name\" field (column 4) for each image's filename.  Default is to use the \"chr:start-pos.ext\"."
    slop: "Number of flanking base pairs on the left & right of the image. - (INT) Default = 0."
    img: "The type of image to be created.  Options: png, eps, svg Default is png."
    i: ""
    bed_tools: ""
    igv: ""
  }
}