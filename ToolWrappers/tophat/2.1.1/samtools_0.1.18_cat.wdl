version 1.0

task Samtools0118Cat {
  input {
    String? o
    String? h
    String sam_tools
    String cat
    Int in_one_dot_bam
    Int in_two_dot_bam
  }
  command <<<
    samtools_0_1_18 cat \
      ~{sam_tools} \
      ~{cat} \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    h: ""
    sam_tools: ""
    cat: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}