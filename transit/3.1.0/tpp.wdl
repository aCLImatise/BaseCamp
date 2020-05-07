version 1.0

task Tpp {
  input {
    String repliconRepliconIds
  }
  command <<<
    tpp \
      ~{if defined(repliconRepliconIds) then ("-replicon-ids " +  '"' + repliconRepliconIds + '"') else ""}
  >>>
}