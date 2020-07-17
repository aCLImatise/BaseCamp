version 1.0

task SamtoolsTargetcut {
  input {
    Int? q
    String? i
    String? zero
    String? one
    String? two
    String? f
    String in_dot_bam
  }
  command <<<
    samtools targetcut \
      ~{in_dot_bam} \
      ~{if defined(q) then ("-Q " +  '"' + q + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(zero) then ("-0 " +  '"' + zero + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    i: ""
    zero: ""
    one: ""
    two: ""
    f: ""
    in_dot_bam: ""
  }
}