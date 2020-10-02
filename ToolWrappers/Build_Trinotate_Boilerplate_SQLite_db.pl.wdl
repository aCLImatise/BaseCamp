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
    uniprot_sprot_dot_dat_do_tgz: "0% |                               |    17k  9:28:30 ETA
  }
  output {
    File out_stdout = stdout()
  }
}