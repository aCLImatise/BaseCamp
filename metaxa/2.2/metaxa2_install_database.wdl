version 1.0

task Metaxa2InstallDatabase {
  input {
    String gG
  }
  command <<<
    metaxa2_install_database \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""}
  >>>
}