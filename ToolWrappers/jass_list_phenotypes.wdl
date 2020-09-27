version 1.0

task JassListphenotypes {
  input {
    File? in_it_table_path
  }
  command <<<
    jass list_phenotypes \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""}
  >>>
  parameter_meta {
    in_it_table_path: "path to the initial data file, default is the\\nconfigured path (JASS_DATA_DIR/initTable.hdf5)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}