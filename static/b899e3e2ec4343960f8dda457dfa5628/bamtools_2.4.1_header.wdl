version 1.0

task Bamtools241Header {
  input {
    File? in
    File? list
    String bam_tools
    String header
  }
  command <<<
    bamtools_2_4_1 header \
      ~{bam_tools} \
      ~{header} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one\\nline per file"
    bam_tools: ""
    header: ""
  }
  output {
    File out_stdout = stdout()
  }
}