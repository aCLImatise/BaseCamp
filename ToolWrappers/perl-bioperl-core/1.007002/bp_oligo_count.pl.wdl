version 1.0

task BpOligoCountpl {
  input {
    Int? lslash_length
    Boolean? h_slash_help
    String oligo_count
  }
  command <<<
    bp_oligo_count_pl \
      ~{oligo_count} \
      ~{if defined(lslash_length) then ("-l/--length " +  '"' + lslash_length + '"') else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    lslash_length: ""
    h_slash_help: ""
    oligo_count: ""
  }
  output {
    File out_stdout = stdout()
  }
}