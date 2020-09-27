version 1.0

task BpSeqconvertpl {
  input {
    String? to
    String? from
    File file_dot_in_format
  }
  command <<<
    bp_seqconvert_pl \
      ~{file_dot_in_format} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""}
  >>>
  parameter_meta {
    to: ""
    from: ""
    file_dot_in_format: ""
  }
  output {
    File out_stdout = stdout()
  }
}