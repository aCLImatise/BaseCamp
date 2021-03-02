version 1.0

task BamtoolsCount {
  input {
    File? in
    File? list
    File? region
  }
  command <<<
    bamtools count \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one\\nline per file"
    region: "genomic region. Index file is\\nrecommended for better performance, and is\\nused automatically if it exists. See\\n'bamtools help index' for more details on\\ncreating one"
  }
  output {
    File out_stdout = stdout()
  }
}