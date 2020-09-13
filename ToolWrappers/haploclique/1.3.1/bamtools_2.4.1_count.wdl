version 1.0

task Bamtools241Count {
  input {
    File? in
    File? list
    File? region
    String bam_tools
    String count
  }
  command <<<
    bamtools_2_4_1 count \
      ~{bam_tools} \
      ~{count} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one\\nline per file"
    region: "genomic region. Index file is\\nrecommended for better performance, and is\\nused automatically if it exists. See\\n'bamtools help index' for more details on\\ncreating one"
    bam_tools: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}