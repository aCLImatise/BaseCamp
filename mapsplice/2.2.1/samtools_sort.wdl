version 1.0

task SamtoolsSort {
  input {
    Boolean? on
    Int? m
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools sort \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{true="-on" false="" on} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    on: ""
    m: ""
    in_dot_bam: ""
    out_dot_prefix: ""
  }
}