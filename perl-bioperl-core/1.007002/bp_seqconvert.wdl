version 1.0

task BpSeqconvert.pl {
  input {
    String? from
    String? to
    File file_dot_in_format
    File file_dot_out_format
  }
  command <<<
    bp_seqconvert.pl \
      ~{file_dot_in_format} \
      ~{file_dot_out_format} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""}
  >>>
  parameter_meta {
    from: ""
    to: ""
    file_dot_in_format: ""
    file_dot_out_format: ""
  }
}