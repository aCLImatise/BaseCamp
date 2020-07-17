version 1.0

task BamtoolsConvert {
  input {
    String? in
    File? list
    String? out
    String? format
    String? region
    String? fast_a
    Boolean? map_qual
    Boolean? noheader
  }
  command <<<
    bamtools convert \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-mapqual" false="" map_qual} \
      ~{true="-noheader" false="" noheader}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one line per file"
    out: "the output BAM file [stdout]"
    format: "the output file format - see README for recognized formats"
    region: "genomic region. Index file is recommended for better performance, and is used automatically if it exists. See 'bamtools help index' for more details on creating one"
    fast_a: "FASTA reference file"
    map_qual: "print the mapping qualities"
    noheader: "omit the SAM header from output"
  }
}