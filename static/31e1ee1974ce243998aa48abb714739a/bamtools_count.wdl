version 1.0

task BamtoolsCount {
  input {
    String? in
    File? list
    String? region
  }
  command <<<
    bamtools count \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one line per file"
    region: "genomic region. Index file is recommended for better performance, and is used automatically if it exists. See 'bamtools help index' for more details on creating one"
  }
}