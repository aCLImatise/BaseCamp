version 1.0

task AddDatasourceMd5 {
  input {
    String ds_dir
  }
  command <<<
    addDatasourceMd5 \
      ~{ds_dir}
  >>>
  parameter_meta {
    ds_dir: "datasource directory.  This should be the genome_build dir inside a datasource dir."
  }
}