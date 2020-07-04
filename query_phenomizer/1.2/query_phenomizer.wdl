version 1.0

task QueryPhenomizer {
  input {
    String? hpo_term
  }
  command <<<
    query_phenomizer \
      ~{hpo_term}
  >>>
  parameter_meta {
    hpo_term: ""
  }
}