version 1.0

task FaToTwoBit {
  input {
    Boolean? long
    Boolean? no_mask
    Boolean? strip_version
    Boolean? ignored_ups
    String names_dot
  }
  command <<<
    faToTwoBit \
      ~{names_dot} \
      ~{if (long) then "-long" else ""} \
      ~{if (no_mask) then "-noMask" else ""} \
      ~{if (strip_version) then "-stripVersion" else ""} \
      ~{if (ignored_ups) then "-ignoreDups" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    long: "use 64-bit offsets for index.   Allow for twoBit to contain more than 4Gb of sequence.\\nNOT COMPATIBLE WITH OLDER CODE."
    no_mask: "Ignore lower-case masking in fa file."
    strip_version: "Strip off version number after '.' for GenBank accessions."
    ignored_ups: "Convert first sequence only if there are duplicate sequence"
    names_dot: "Use 'twoBitDup' to find duplicate sequences."
  }
  output {
    File out_stdout = stdout()
  }
}