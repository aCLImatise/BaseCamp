version 1.0

task Errhdr {
  input {
    Int? codesubcode_tuples
    String? short_subcode_defines
    String msg_file
    String? hdr_file
  }
  command <<<
    errhdr \
      ~{msg_file} \
      ~{hdr_file} \
      ~{if defined(codesubcode_tuples) then ("-2 " +  '"' + codesubcode_tuples + '"') else ""} \
      ~{if defined(short_subcode_defines) then ("-s " +  '"' + short_subcode_defines + '"') else ""}
  >>>
  parameter_meta {
    codesubcode_tuples: "code,subcode tuples"
    short_subcode_defines: "short subcode defines"
    msg_file: ""
    hdr_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}