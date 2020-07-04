version 1.0

task BpEinfo {
  input {
    Boolean? e_slash_email
    Boolean? d_slash_db_slash_database
    Boolean? f_slash_field
    Boolean? lslash_link
    Boolean? oslash_out
    Boolean? h_slash_help
  }
  command <<<
    bp_einfo \
      ~{true="-e/--email" false="" e_slash_email} \
      ~{true="-d/--db/--database" false="" d_slash_db_slash_database} \
      ~{true="-f/--field" false="" f_slash_field} \
      ~{true="-l/--link" false="" lslash_link} \
      ~{true="-o/--out" false="" oslash_out} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    e_slash_email: "Valid email (required by NCBI policy)"
    d_slash_db_slash_database: "NCBI database to query (default = none, which shows available databases)"
    f_slash_field: "print out information about a specific field code (default = none)"
    lslash_link: "print out information about a specific link name (default = none)"
    oslash_out: "outfile (default = STDOUT)"
    h_slash_help: "show this documentation"
  }
}