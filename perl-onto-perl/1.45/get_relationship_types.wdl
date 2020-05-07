version 1.0

task GetRelationshipTypes.pl {
  input {
    Boolean fF
  }
  command <<<
    get_relationship_types.pl \
      ~{true="-f" false="" fF}
  >>>
}