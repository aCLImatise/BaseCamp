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
      ~{if (path) then "-path" else ""} \
      ~{if (sess) then "-sess" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (clps) then "-clps" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (slop) then "-slop" else ""} \
      ~{if (img) then "-img" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: "The full path to which the IGV snapshots should be written.\\n(STRING) Default: ./"
    sess: "The full path to an existing IGV session file to be\\nloaded prior to taking snapshots.\\n(STRING) Default is for no session to be loaded."
    sort: "The type of BAM sorting you would like to apply to each image.\\nOptions: base, position, strand, quality, sample, and readGroup\\nDefault is to apply no sorting at all."
    clps: "Collapse the aligned reads prior to taking a snapshot.\\nDefault is to no collapse."
    name: "Use the \\\"name\\\" field (column 4) for each image's filename.\\nDefault is to use the \\\"chr:start-pos.ext\\\"."
    slop: "Number of flanking base pairs on the left & right of the image.\\n- (INT) Default = 0."
    img: "The type of image to be created.\\nOptions: png, eps, svg\\nDefault is png."
    i: ""
    bed_tools: ""
    igv: ""
  }
  output {
    File out_stdout = stdout()
  }
}