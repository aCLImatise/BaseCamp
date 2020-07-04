version 1.0

task SamtoolsCat {
  input {
    String? h
    String? o
    String in_one_dot_bam
    String in_two_dot_bam
  }
  command <<<
    samtools cat \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    h: ""
    o: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
}