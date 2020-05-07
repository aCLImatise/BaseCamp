version 1.0

task GetRelationshipIdVsRelationshipDef.pl {
  input {
    Boolean fF
  }
  command <<<
    get_relationship_id_vs_relationship_def.pl \
      ~{true="-f" false="" fF}
  >>>
}