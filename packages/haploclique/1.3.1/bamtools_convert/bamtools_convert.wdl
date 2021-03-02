version 1.0

task BamtoolsConvert {
  input {
    File? in
    File? list
    File? out
    File? format
    File? region
    File? fast_a
    Boolean? map_qual
    Boolean? noheader
    String help
  }
  command <<<
    bamtools convert \
      ~{help} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (map_qual) then "-mapqual" else ""} \
      ~{if (noheader) then "-noheader" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one\\nline per file"
    out: "the output BAM file [stdout]"
    format: "the output file format - see\\nREADME for recognized formats"
    region: "genomic region. Index file is\\nrecommended for better performance, and is\\nused automatically if it exists. See\\n'bamtools help index' for more details on\\ncreating one"
    fast_a: "FASTA reference file"
    map_qual: "print the mapping qualities"
    noheader: "omit the SAM header from"
    help: "Help:"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_format = "${in_format}"
  }
}