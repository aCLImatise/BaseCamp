version 1.0

task SamtoolsCat {
  input {
    String? o
    String? h
    Int in_one_dot_bam
    Int in_two_dot_bam
  }
  command <<<
    samtools cat \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    h: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}