version 1.0

task BpEinfo {
  input {
    Boolean? e_slash_email
    Boolean? d_slash_db_slash_database
    Boolean? f_slash_field
    Boolean? lslash_link
    Boolean? oslash_out
    Boolean? h_slash_help
    String bioperl_lat_bioperl_dot_org
    String support
  }
  command <<<
    bp_einfo \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{support} \
      ~{if (e_slash_email) then "-e/--email" else ""} \
      ~{if (d_slash_db_slash_database) then "-d/--db/--database" else ""} \
      ~{if (f_slash_field) then "-f/--field" else ""} \
      ~{if (lslash_link) then "-l/--link" else ""} \
      ~{if (oslash_out) then "-o/--out" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    e_slash_email: "Valid email (required by NCBI policy)"
    d_slash_db_slash_database: "NCBI database to query\\n(default = none, which shows available databases)"
    f_slash_field: "print out information about a specific field code\\n(default = none)"
    lslash_link: "print out information about a specific link name\\n(default = none)"
    oslash_out: "outfile\\n(default = STDOUT)"
    h_slash_help: "show this documentation"
    bioperl_lat_bioperl_dot_org: "- General discussion"
    support: "Please direct usage questions or support issues to the mailing list:\\n*bioperl-l@bioperl.org*\\nrather than to the module maintainer directly. Many experienced and\\nreponsive experts will be able look at the problem and quickly address\\nit. Please include a thorough description of the problem with code and\\ndata examples if at all possible."
  }
  output {
    File out_stdout = stdout()
  }
}