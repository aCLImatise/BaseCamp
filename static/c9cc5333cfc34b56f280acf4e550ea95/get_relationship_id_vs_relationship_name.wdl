version 1.0

task GetRelationshipIdVsRelationshipName.pl {
  input {
    Boolean fF
  }
  command <<<
    get_relationship_id_vs_relationship_name.pl \
      ~{true="-f" false="" fF}
  >>>
}