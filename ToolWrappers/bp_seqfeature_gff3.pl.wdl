version 1.0

task BpSeqfeatureGff3pl {
  input {
    Boolean? dsn
    Boolean? adaptor
    Boolean? user
    Boolean? password
    Boolean? gff_three_opt
  }
  command <<<
    bp_seqfeature_gff3_pl \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if (adaptor) then "--adaptor" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (gff_three_opt) then "--gff3opt" else ""}
  >>>
  parameter_meta {
    dsn: "The database name ()"
    adaptor: "The storage adaptor to use ()"
    user: "User to connect to database as"
    password: "Password to use to connect to database"
    gff_three_opt: "flag options to gff3_string (i.e.: pass -gffopt 1 to recurse)"
  }
  output {
    File out_stdout = stdout()
  }
}