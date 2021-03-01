version 1.0

task RsatVariationinfo {
  input {
    String? type
    String variation_info
    String util
    String ignored_dot
    String matrices_dot
    String get
    String regions_dot
    Int mdeletionm
    String deletion
    String insertion
  }
  command <<<
    rsat variation_info \
      ~{variation_info} \
      ~{util} \
      ~{ignored_dot} \
      ~{matrices_dot} \
      ~{get} \
      ~{regions_dot} \
      ~{mdeletionm} \
      ~{deletion} \
      ~{insertion} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: ",deletion"
    variation_info: "[1mVERSION[0m"
    util: "[1mUSAGE[0m"
    ignored_dot: "The definition of the BED format is provided on the UCSC Genome Browser"
    matrices_dot: "[1mWISH LIST[0m"
    get: "variations specified either by their IDs or by a set of genomic"
    regions_dot: "Supported formats:"
    mdeletionm: "[33mdeletion[0m"
    deletion: "http://www.sequenceontology.org/browser/release_2.5/term/SO:0000159"
    insertion: "http://www.sequenceontology.org/browser/release_2.5/term/SO:0000667"
  }
  output {
    File out_stdout = stdout()
  }
}