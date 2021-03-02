version 1.0

task BpEinfo {
  input {
    Boolean? email
    Boolean? database
    Boolean? field
    Boolean? link
    String outfile
    String bioperl_lat_bioperl_dot_org
    String support
  }
  command <<<
    bp_einfo \
      ~{outfile} \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{support} \
      ~{if (email) then "--email" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (field) then "--field" else ""} \
      ~{if (link) then "--link" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    email: "Valid email (required by NCBI policy)"
    database: "NCBI database to query\\n(default = none, which shows available databases)"
    field: "print out information about a specific field code\\n(default = none)"
    link: "print out information about a specific link name\\n(default = none)"
    outfile: "(default = STDOUT)"
    bioperl_lat_bioperl_dot_org: "- General discussion"
    support: "Please direct usage questions or support issues to the mailing list:\\n*bioperl-l@bioperl.org*\\nrather than to the module maintainer directly. Many experienced and\\nreponsive experts will be able look at the problem and quickly address\\nit. Please include a thorough description of the problem with code and\\ndata examples if at all possible."
  }
  output {
    File out_stdout = stdout()
  }
}