version 1.0

task BpOligoCount.pl {
  input {
    Boolean? h_slash_help
    String? lslash_length
    String oligo_count
  }
  command <<<
    bp_oligo_count.pl \
      ~{oligo_count} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{if defined(lslash_length) then ("-l/--length " +  '"' + lslash_length + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: ""
    lslash_length: ""
    oligo_count: ""
  }
}