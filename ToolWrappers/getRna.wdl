version 1.0

task GetRna {
  input {
    Boolean? cds_upper
    Boolean? cds_upper_all
    Boolean? incl_ver
    Boolean? peptides
    String database
    String acc_file
  }
  command <<<
    getRna \
      ~{database} \
      ~{acc_file} \
      ~{if (cds_upper) then "-cdsUpper" else ""} \
      ~{if (cds_upper_all) then "-cdsUpperAll" else ""} \
      ~{if (incl_ver) then "-inclVer" else ""} \
      ~{if (peptides) then "-peptides" else ""}
  >>>
  parameter_meta {
    cds_upper: "- lookup CDS and output it as upper case. If CDS annotation\\ncan't be obtained, the sequence is skipped with a warning."
    cds_upper_all: "- like -cdsUpper, except keep sequeneces without CDS"
    incl_ver: "- include version with sequence id."
    peptides: "- translate mRNAs to peptides"
    database: ""
    acc_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}