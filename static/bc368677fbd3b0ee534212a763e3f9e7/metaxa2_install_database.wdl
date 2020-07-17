version 1.0

task Metaxa2InstallDatabase {
  input {
    String? g
  }
  command <<<
    metaxa2_install_database \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    g: ""
  }
}