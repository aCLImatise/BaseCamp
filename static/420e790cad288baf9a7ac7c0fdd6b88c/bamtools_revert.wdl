version 1.0

task BamtoolsRevert {
  input {
    String? in
    String? out
    Boolean? force_compression
    Boolean? keep_duplicate
    Boolean? keep_qualities
  }
  command <<<
    bamtools revert \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-forceCompression" false="" force_compression} \
      ~{true="-keepDuplicate" false="" keep_duplicate} \
      ~{true="-keepQualities" false="" keep_qualities}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output BAM file [stdout]"
    force_compression: "if results are sent to stdout (like when piping to another tool), default behavior is to leave output uncompressed. Use this flag to override and force compression"
    keep_duplicate: "keep duplicates marked"
    keep_qualities: "keep base qualities (do not replace with OQ contents)"
  }
}