version 1.0

task GetRna {
  input {
    Boolean? cds_upper_all
    Boolean? incl_ver
    Boolean? peptides
    String database
    String acc_file
    String out_fa
  }
  command <<<
    getRna \
      ~{database} \
      ~{acc_file} \
      ~{out_fa} \
      ~{true="-cdsUpperAll" false="" cds_upper_all} \
      ~{true="-inclVer" false="" incl_ver} \
      ~{true="-peptides" false="" peptides}
  >>>
  parameter_meta {
    cds_upper_all: "- like -cdsUpper, except keep sequeneces without CDS"
    incl_ver: "- include version with sequence id."
    peptides: "- translate mRNAs to peptides"
    database: ""
    acc_file: ""
    out_fa: ""
  }
}