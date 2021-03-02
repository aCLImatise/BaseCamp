version 1.0

task SamtoolsTargetcut {
  input {
    String? f
    Int? two
    Int? one
    Int? zero
    String? i
    Int? q
    String in_dot_bam
  }
  command <<<
    samtools targetcut \
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
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}