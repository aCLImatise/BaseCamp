version 1.0

task Samtools0118Targetcut {
  input {
    String? f
    Int? two
    Int? one
    Int? zero
    String? i
    Int? q
    String sam_tools
    String target_cut
    String in_dot_bam
  }
  command <<<
    samtools_0_1_18 targetcut \
      ~{sam_tools} \
      ~{target_cut} \
      ~{in_dot_bam} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(zero) then ("-0 " +  '"' + zero + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(q) then ("-Q " +  '"' + q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    two: ""
    one: ""
    zero: ""
    i: ""
    q: ""
    sam_tools: ""
    target_cut: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}