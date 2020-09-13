version 1.0

task BuildTrinotateBoilerplateSQLiteDbpl {
  input {
    String uniprot_sprot_dot_dat_do_tgz
  }
  command <<<
    Build_Trinotate_Boilerplate_SQLite_db_pl \
      ~{uniprot_sprot_dot_dat_do_tgz}
  >>>
  parameter_meta {
    uniprot_sprot_dot_dat_do_tgz: "0% |                               |    17k  9:28:30 ETAuniprot_sprot.dat.gz   0% |                               |    77k  4:11:00 ETAuniprot_sprot.dat.gz   0% |                               |   157k  3:04:37 ETAuniprot_sprot.dat.gz   0% |                               |   301k  2:08:22 ETAuniprot_sprot.dat.gz   0% |                               |   468k  1:43:10 ETAuniprot_sprot.dat.gz   0% |                               |   649k  1:29:15 ETAuniprot_sprot.dat.gz   0% |                               |   872k  1:17:28 ETA"
  }
  output {
    File out_stdout = stdout()
  }
}