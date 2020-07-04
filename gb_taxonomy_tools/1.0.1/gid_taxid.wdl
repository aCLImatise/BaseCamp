version 1.0

task GidTaxid {
  input {
    String list_of_genbank_ids
  }
  command <<<
    gid-taxid \
      ~{list_of_genbank_ids}
  >>>
  parameter_meta {
    list_of_genbank_ids: ""
  }
}