version 1.0

task BamtoolsRandom {
  input {
    String? in
    File? list
    String? out
    String? region
    Boolean? force_compression
    String? number_alignments_grab
    String? seed
  }
  command <<<
    bamtools random \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{true="-forceCompression" false="" force_compression} \
      ~{if defined(number_alignments_grab) then ("-n " +  '"' + number_alignments_grab + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one line per file"
    out: "the output BAM file [stdout]"
    region: "only pull random alignments from within this genomic region. Index file is recommended for better performance, and is used automatically if it exists. See 'bamtools help index' for more details on creating one"
    force_compression: "if results are sent to stdout (like when piping to another tool), default behavior is to leave output uncompressed. Use this flag to override and force compression"
    number_alignments_grab: "number of alignments to grab. Note - no duplicate checking is performed [10000]"
    seed: "random number generator seed (for repeatable results). Current time is used if no seed value is provided."
  }
}