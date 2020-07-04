version 1.0

task BamtoolsMerge {
  input {
    String? in
    File? list
    String? out
    Boolean? force_compression
    String? region
  }
  command <<<
    bamtools merge \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-forceCompression" false="" force_compression} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file(s)"
    list: "the input BAM file list, one line per file"
    out: "the output BAM file"
    force_compression: "if results are sent to stdout (like when piping to another tool), default behavior is to leave output uncompressed. Use this flag to override and force compression"
    region: "genomic region. See README for more details"
  }
}