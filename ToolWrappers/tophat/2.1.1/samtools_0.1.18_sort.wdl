version 1.0

task Samtools0118Sort {
  input {
    String? m
    Boolean? on
    String sam_tools
    String sort
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools_0_1_18 sort \
      ~{sam_tools} \
      ~{sort} \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (on) then "-on" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: ""
    on: ""
    sam_tools: ""
    sort: ""
    in_dot_bam: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}