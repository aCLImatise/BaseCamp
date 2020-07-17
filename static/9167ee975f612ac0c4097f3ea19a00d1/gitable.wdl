version 1.0

task Gitable.sh {
  input {
    String? x_mx_two_zero_g
    String shrunk_dot_dead_nucl_dot_accession_two_taxid_do_tgz
  }
  command <<<
    gitable.sh \
      ~{shrunk_dot_dead_nucl_dot_accession_two_taxid_do_tgz} \
      ~{if defined(x_mx_two_zero_g) then ("-Xmx20g " +  '"' + x_mx_two_zero_g + '"') else ""}
  >>>
  parameter_meta {
    x_mx_two_zero_g: "specify 20 gigs of RAM.  The max is typically 85% of physical memory."
    shrunk_dot_dead_nucl_dot_accession_two_taxid_do_tgz: ""
  }
}