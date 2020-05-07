version 1.0

task GetRelationshipIdVsRelationshipNamespace.pl {
  input {
    Boolean fF
  }
  command <<<
    get_relationship_id_vs_relationship_namespace.pl \
      ~{true="-f" false="" fF}
  >>>
}